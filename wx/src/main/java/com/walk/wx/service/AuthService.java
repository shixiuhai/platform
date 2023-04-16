package com.walk.wx.service;
import com.walk.mall.tiny.common.api.CommonResult;
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
    boolean login(String jsCode);
}