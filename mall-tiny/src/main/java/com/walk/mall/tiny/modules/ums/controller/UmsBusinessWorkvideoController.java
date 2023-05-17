package com.walk.mall.tiny.modules.ums.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.walk.mall.tiny.modules.ums.model.UmsBusinessWorkvideo;
import com.walk.mall.tiny.modules.ums.service.UmsBusinessWorkvideoService;

import io.swagger.v3.oas.annotations.parameters.RequestBody;

import com.walk.mall.tiny.common.api.CommonResult;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.walk.mall.tiny.common.api.CommonPage;

@RestController
@RequestMapping("/workVideo")
public class UmsBusinessWorkvideoController {
    @Autowired
    private UmsBusinessWorkvideoService umsBusinessWorkvideoService;
    
    @PostMapping("")
    public CommonResult save(@RequestBody UmsBusinessWorkvideo umsBusinessWorkvideo){
        boolean success = umsBusinessWorkvideoService.save(umsBusinessWorkvideo);
        if(success){
            return CommonResult.success(null, null);
        }
        return CommonResult.failed();
    }

    @DeleteMapping("")
    public CommonResult delete(@RequestParam(value="id",required = true) Integer id){
        boolean success = umsBusinessWorkvideoService.removeById(id);
        if(success){
            return CommonResult.success(null, null);
        }
        return CommonResult.failed();
    }

    @PutMapping("")
    public CommonResult update(@RequestBody UmsBusinessWorkvideo umsBusinessWorkvideo){
        boolean success = umsBusinessWorkvideoService.updateById(umsBusinessWorkvideo);
        if(success){
            return CommonResult.success(null, null);
        }
        return CommonResult.failed();
    }

    @GetMapping("")
    public  CommonResult list(@RequestParam(value="workId", required = true) Integer workId,
                              @RequestParam(value="page", required = false, defaultValue = "1") Integer page,
                              @RequestParam(value="size", required = false, defaultValue = "10") Integer size,
                              @RequestParam(value = "type", required = false) Integer type){
        Page<UmsBusinessWorkvideo> umsBusinessWorkvideoList = umsBusinessWorkvideoService.list(workId,page,size,type);
        return CommonResult.success(CommonPage.restPage(umsBusinessWorkvideoList), null);
    }
    
}
