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
import com.walk.mall.tiny.security.util.SpringUtil;
import com.walk.mall.tiny.modules.ums.model.UmsAdmin;
import com.walk.mall.tiny.modules.ums.service.UmsAdminService;
@Slf4j
@RestController
@RequestMapping("/test")
public class Test {
    @GetMapping("")
    public CommonResult  test(){
        String umsAdmin = SpringUtil.getUsername();
        // log.info(umsAdmin.toString());
        return CommonResult.success(umsAdmin);

    }
}
   
