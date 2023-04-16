package com.walk.wx;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.walk.mall.tiny.common.api.CommonResult;
import lombok.extern.slf4j.Slf4j;
@Slf4j
@RestController
@RequestMapping("/wechat")
public class LoginControlTest {
    // @GetMapping("/{id}")
    // public CommonResult test(@PathVariable(value = "id") Long parentId){
    //     log.info("=============out id是 {}=====================",parentId);
    //     return CommonResult.success("成功", null);
    // }

    @GetMapping("")
    public CommonResult test1(@RequestParam(value = "id",required = true) Long parentId){
        log.info("=============out id是 {}=====================",parentId);
        return CommonResult.success("成功", null);
    }

    @GetMapping("/{parentId}")
    public CommonResult test2(@PathVariable Long parentId){
        log.info("=============out id是 {}=====================",parentId);
        return CommonResult.success("成功", null);
    }
    
}
