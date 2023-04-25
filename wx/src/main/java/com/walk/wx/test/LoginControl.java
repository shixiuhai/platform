package com.walk.wx.test;
import com.walk.mall.tiny.common.api.CommonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.walk.mall.tiny.common.api.CommonResult;
import lombok.extern.slf4j.Slf4j;
import com.walk.mall.tiny.modules.ums.service.UmsAdminService;
@Slf4j
@RestController
@RequestMapping("/wechat")
public class LoginControl {
    @Autowired
    private UmsAdminService umsAdminService;
    @Value("${wxMini.wxUser.defaultPassword}")
    private String password;
    @RequestMapping("")
    public CommonResult getToken(){
        String token = null;
        token = umsAdminService.login("shixiuhai",password);
        log.info("{}",token);
        return CommonResult.success(token);

    }
   
}
