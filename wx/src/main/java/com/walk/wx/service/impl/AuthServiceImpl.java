package com.walk.wx.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.StringUtils;

import java.util.Map;
import java.util.Objects;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import com.alibaba.fastjson.JSONObject;
import com.walk.mall.tiny.security.util.JwtTokenUtil;
import com.walk.wx.service.AuthService;
import com.walk.wx.service.WxMiniApi;
import com.walk.wx.service.impl.WxMiniApiImpl;
import com.walk.mall.tiny.common.api.CommonResult;
import com.walk.mall.tiny.modules.ums.dto.UmsAdminParam;
import com.walk.mall.tiny.modules.ums.model.UmsAdmin;
import com.walk.mall.tiny.modules.ums.service.UmsAdminService;
import com.walk.wx.utils.WeChatUtil;
import lombok.extern.slf4j.Slf4j;

/**
 * 授权登录接口实现类
 *
 * @author zhuhuix
 * @date 2020-04-07
 */
// 微信登陆
// https://blog.csdn.net/qq_35387940/article/details/117963696 # 重点解码方法
// https://blog.csdn.net/qq_41542723/article/details/125173445
// https://juejin.cn/post/7156992157704781831 
// https://www.jianshu.com/p/4e4db943bfb3
// https://blog.csdn.net/qq_41542723/article/details/125173445
// 重要使用 https://cloud.tencent.com/developer/article/1680005
// 重要使用 https://juejin.cn/post/7140907364966170631
// 重要使用 https://blog.csdn.net/qq_41432730/article/details/123617323
// 重要使用 https://juejin.cn/post/7140907364966170631#heading-8
// 微信公众号 https://developers.weixin.qq.com/doc/offiaccount/Getting_Started/Overview.html

@Slf4j
@Service
public class AuthServiceImpl implements AuthService {
    @Value("${wxMini.wxUser.defaultPassword}")
    private String password;
    @Value("${wxMini.appId}")
    private String appId;
    @Value("${wxMini.secret}")
    private String secret;
    @Value("${jwt.tokenHead}")
    private String tokenHead;
    
    @Autowired
    private UmsAdminService umsAdminService;
    
    @Autowired
    private WxMiniApi wxMiniApi;

    @Autowired
    private JwtTokenUtil jwtTokenUtil;

    public Map<String,String> jsCodeLogin(String jsCode,String nickName,String icon){
        Map<String,String> wxUser = new HashMap<>();
        JSONObject jsonObject = wxMiniApi.authCode2Session(appId, secret, jsCode);
        if(jsonObject == null) {
            // 添加信息到wxUser中
            wxUser.put("token", "");
            wxUser.put("tokenHead", tokenHead);
            return wxUser;
        }
        String openId = jsonObject.getString("openid");
        if(openId==null){
            // 添加信息到wxUser中
            wxUser.put("token", "token异常");
            wxUser.put("tokenHead", "");
            return wxUser;
        }
        // 在数据库查询是否存在用户
        UmsAdmin  umsAdmin = umsAdminService.getOne(new LambdaQueryWrapper<UmsAdmin>()
            .eq(!StringUtils.isEmpty(openId),UmsAdmin::getUsername , openId));

        // 用户存在直接登陆
        if(Objects.nonNull(umsAdmin)){
            // 获取用户token
            String token = loginByUserName(umsAdmin.getUsername());
            // 添加信息到wxUser中
            wxUser.put("token", token);
            wxUser.put("tokenHead", tokenHead);
            return wxUser;
        }

        // 用户不存在创建用户登陆
        UmsAdminParam umsAdminParam = new UmsAdminParam();
        umsAdminParam.setUsername(openId);
        umsAdminParam.setPassword(password);
        umsAdminParam.setNickName(nickName);
        umsAdminParam.setIcon(icon);
        if(StringUtils.isBlank(nickName)){
            // 如果nickName为空就设置为openId
            umsAdminParam.setNickName(openId);

        }
        if(StringUtils.isBlank(icon)){
            umsAdminParam.setIcon("http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg.jpg");
        }
        
        umsAdmin = umsAdminService.register(umsAdminParam);
        // 通过用户账号获取token
        String token = loginByUserName(umsAdmin.getUsername());
        wxUser.put("token", token);
        wxUser.put("tokenHead", tokenHead);
        // 默认用户创建为普通用户角色
        List<Long> roleIds = new ArrayList<>();
        roleIds.add(9L);
        umsAdminService.updateRole(umsAdmin.getId(),roleIds);
        // 返回微信登陆用户信息
        return wxUser;


        
    }
    
    public  Map<String,String> login(String jsCode, String encryptedData, String iv){
        JSONObject jsonObject = wxMiniApi.authCode2Session(appId, secret, jsCode);
        if(jsonObject == null) {
            throw new RuntimeException("调用微信端授权认证接口错误");
        }
        // String openId = jsonObject.getString("openid");
        String sessionKey = jsonObject.getString("session_key");
        // String unionId = jsonObject.getString("unionid");
        
        // 解析出的微信加密结果
        String result = WeChatUtil.decryptData(encryptedData, sessionKey, iv);
        log.info("--------------------------------------");
        log.info("输出的结果是{}",result);
        log.info("--------------------------------------");
        
        // 创建一个返回对象
        // Map<String,String> wxUser = new HashMap<String,String>();
        Map<String,String> wxUser = new HashMap<>();
        // wxUser.put("openId", openId);
        // wxUser.put("sessionKey",sessionKey);
        // wxUser.put("unionId",unionId);
        
        // 将结果转换为json数据
        JSONObject wechatResult = JSONObject.parseObject(result) ;
        // 获取电话号码
        String phoneNumber = wechatResult.getString("phoneNumber");
        // 在数据库查询是否存在用户
        UmsAdmin  umsAdmin = umsAdminService.getOne(new LambdaQueryWrapper<UmsAdmin>()
            .eq(!StringUtils.isEmpty(phoneNumber),UmsAdmin::getUsername , phoneNumber));
        
        // 用户存在直接登陆
        if(Objects.nonNull(umsAdmin)){
            // 获取用户token
            String token = loginByUserName(umsAdmin.getUsername());
            // 添加信息到wxUser中
            wxUser.put("token", token);
            wxUser.put("tokenHead", tokenHead);
            return wxUser;
        }

        // 用户不存在创建用户登陆
        UmsAdminParam umsAdminParam = new UmsAdminParam();
        umsAdminParam.setUsername(phoneNumber);
        umsAdminParam.setPassword(password);
        umsAdmin = umsAdminService.register(umsAdminParam);
        // 通过用户账号获取token
        String token = loginByUserName(umsAdmin.getUsername());
        wxUser.put("token", token);
        wxUser.put("tokenHead", tokenHead);
        
        // 返回微信登陆用户信息
        return wxUser;
        
        
        // 以下是我们生产环境正在使用的流程，供您参考一下下[呲牙]
        // 1. 项目初始化时调用`Taro.login`接口获取到code
        // 2. 将`code`发送给后端 后端使用code换取用户`sessionKey`，并保存起来。
        // 3. 用户点击按钮拉起`获取手机号授权框`并确认授权后，将`iv`、`encryptedData`提交给后端
        // 4. 后端使用 `iv` + `encryptedData` + `sessionKey`可以解出手机号并脱敏返回给前端。 自此，手机号授权流程结束。
        
    }

    
    
    // 定义通过用户账号获取token
    public String loginByUserName(String username){
        UserDetails userDetails = umsAdminService.loadUserByUsername(username);
        UsernamePasswordAuthenticationToken authentication = new UsernamePasswordAuthenticationToken(userDetails, null, userDetails.getAuthorities());
        SecurityContextHolder.getContext().setAuthentication(authentication);
        String token = jwtTokenUtil.generateToken(userDetails);
        return token;

    }

    
   

   
   
}