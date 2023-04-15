package com.walk.wx;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.walk.mall.tiny.common.api.CommonResult;
import lombok.extern.slf4j.Slf4j;
@Slf4j
@RestController
@RequestMapping("/wechat")
public class LoginControl {
    @GetMapping("")
    public CommonResult test(){
        log.info("=============out=====================");
        return CommonResult.success("成功", null);
    }
    
}
