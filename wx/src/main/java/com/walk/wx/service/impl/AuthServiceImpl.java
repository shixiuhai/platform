package com.walk.wx.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSONObject;
import com.walk.wx.service.AuthService;
import com.walk.wx.service.WxMiniApi;
import com.walk.wx.service.impl.WxMiniApiImpl;
import com.walk.mall.tiny.common.api.CommonResult;
import lombok.extern.slf4j.Slf4j;

/**
 * 授权登录接口实现类
 *
 * @author zhuhuix
 * @date 2020-04-07
 */
@Slf4j
@Service
public class AuthServiceImpl implements AuthService {

    @Value("${wxMini.appId}")
    private String appId;
    @Value("${wxMini.secret}")
    private String secret;
    // private final JwtTokenUtils jwtTokenUtils;
    @Autowired
    private WxMiniApi wxMiniApi;
    public  Map<String,String> login(String jsCode){
        JSONObject jsonObject = wxMiniApi.authCode2Session(appId, secret, jsCode);
        if(jsonObject == null) {
            throw new RuntimeException("调用微信端授权认证接口错误");
        }
        String openId = jsonObject.getString("openid");
        String sessionKey = jsonObject.getString("session_key");
        String unionId = jsonObject.getString("unionid");
        // Map<String,String> wxUser = new HashMap<String,String>();
        Map<String,String> wxUser = new HashMap<>();
        wxUser.put("openId", openId);
        wxUser.put("sessionKey",sessionKey);
        wxUser.put("unionId",unionId);
        

        // 以下是我们生产环境正在使用的流程，供您参考一下下[呲牙]
        // 1. 项目初始化时调用`Taro.login`接口获取到code
        // 2. 将`code`发送给后端 后端使用code换取用户`sessionKey`，并保存起来。
        // 3. 用户点击按钮拉起`获取手机号授权框`并确认授权后，将`iv`、`encryptedData`提交给后端
        // 4. 后端使用 `iv` + `encryptedData` + `sessionKey`可以解出手机号并脱敏返回给前端。 自此，手机号授权流程结束。
        return wxUser;
    }
   



    // @Override
    // @Transactional(rollbackFor = Exception.class)
    // public Result<AuthUserDto> login(AuthUserDto authUserDto, HttpServletRequest request) {
    //     Result<AuthUserDto> result = new Result<>();

    //     //authType=1代表是微信登录
    //     if (!StringUtils.isEmpty(authUserDto.getAuthType()) && authUserDto.getAuthType() == 1) {
    //         JSONObject jsonObject = wxMiniApi.authCode2Session(appId, secret, authUserDto.getCode());
    //         if (jsonObject == null) {
    //             throw new RuntimeException("调用微信端授权认证接口错误");
    //         }
    //         String openId = jsonObject.getString(Constant.OPEN_ID);
    //         String sessionKey = jsonObject.getString(Constant.SESSION_KEY);
    //         String unionId = jsonObject.getString(Constant.UNION_ID);
    //         if (StringUtils.isEmpty(openId)) {
    //             return result.error(jsonObject.getString(Constant.ERR_CODE), jsonObject.getString(Constant.ERR_MSG));
    //         }
    //         authUserDto.setOpenId(openId);

    //         //判断用户表中是否存在该用户，不存在则进行解密得到用户信息，并进行新增用户
    //         Result<User> resultUser = userService.findByOpenId(openId);
    //         if (resultUser.getModule() == null) {
    //             String userInfo = WeChatUtil.decryptData(authUserDto.getEncryptedData(), sessionKey, authUserDto.getIv());
    //             if (StringUtils.isEmpty(userInfo)) {
    //                 throw new RuntimeException("解密用户信息错误");
    //             }
    //             User user = JSONObject.parseObject(userInfo, User.class);
    //             if (user == null) {
    //                 throw new RuntimeException("填充用户对象错误");
    //             }
    //             user.setUnionId(unionId);
    //             userService.create(user);
    //             authUserDto.setUserInfo(user);

    //         } else {
    //             authUserDto.setUserInfo(resultUser.getModule());
    //         }

    //         //创建token
    //         String token = jwtTokenUtils.createToken(openId, null);
    //         if (StringUtils.isEmpty(token)) {
    //             throw new RuntimeException("生成token错误");
    //         }
    //         authUserDto.setToken(token);

    //     }
    //     return result.ok(authUserDto);
    // }
}