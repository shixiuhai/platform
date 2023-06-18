package com.walk.wx.controller;
import com.walk.mall.tiny.common.api.CommonResult;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.walk.mall.tiny.common.api.CommonResult;
import com.walk.mall.tiny.common.api.CommonPage;
import lombok.extern.slf4j.Slf4j;
import com.walk.mall.tiny.modules.ums.service.UmsAdminService;
import com.walk.wx.service.AuthService;
@Slf4j
@RestController
@RequestMapping("/wxLogin")
public class LoginController {
    @Autowired
    private AuthService authService;
    
    @RequestMapping("")// (String jsCode, String encryptedData, String iv)
    public CommonResult getToken(@RequestParam(value = "jsCode", required = true) String jsCode,
                                 @RequestParam(value = "encryptedData", required = true) String  encryptedData,
                                 @RequestParam(value = "iv", required = true) String iv){
        Map<String,String> all = authService.login(jsCode, encryptedData, iv);
        return CommonResult.success(all, null);

    }

    @RequestMapping("/jsCode")// (String jsCode, String encryptedData, String iv)
    public CommonResult getTokenByjsCode(@RequestParam(value = "jsCode", required = true) String jsCode,
                                         @RequestParam(value = "nickName", required = false) String nickName,
                                         @RequestParam(value = "icon", required = false) String icon){
        Map<String,String> all = authService.jsCodeLogin(jsCode,nickName,icon);
        return CommonResult.success(all, null);

    }
    
}
