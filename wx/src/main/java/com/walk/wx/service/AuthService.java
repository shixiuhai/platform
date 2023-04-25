package com.walk.wx.service;
import com.walk.mall.tiny.common.api.CommonResult;

import java.util.Map;

import com.walk.mall.tiny.common.api.CommonPage;

/**
 * 登录授权服务接口
 *
 * @author zhuhuix
 * @date 2020-04-07
 */
public interface AuthService {

    /**
     * 登录授权
     *
     * @param authUserDto 认证用户请求信息
     * @param request Http请求
     * @return 认证用户返回信息
     */
    //上下两种写法都行，简写使用的较多
    // public CommonResult login(String jsCode);
    Map<String,String> login(String jsCode, String encryptedData, String iv);
}