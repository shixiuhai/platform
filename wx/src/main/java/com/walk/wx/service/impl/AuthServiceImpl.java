package com.walk.wx.service.impl;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.walk.wx.service.AuthService;

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
    public boolean login(String jsCode){
        return true;
    }
    // private final JwtTokenUtils jwtTokenUtils;
    // private final WxMiniApi wxMiniApi;
    // private final UserService userService;

    // public AuthServiceImpl(JwtTokenUtils jwtTokenUtils, WxMiniApi wxMiniApi, UserService userService) {
    //     this.jwtTokenUtils = jwtTokenUtils;
    //     this.wxMiniApi = wxMiniApi;
    //     this.userService = userService;
    // }

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