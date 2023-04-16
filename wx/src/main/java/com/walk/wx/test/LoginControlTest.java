package com.walk.wx.test;

import java.util.HashMap;
import java.util.Map;

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
        Map<String,String> m= new HashMap<>();
        m.put("head", "xxxxxx");
        m.put("token","33454424");
        log.info("=============out id是 {}=====================",parentId);
        return CommonResult.success(m,"成功");
        // return CommonResult.success("成功", null);
    }
    
}
