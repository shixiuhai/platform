package com.walk.mall.tiny.modules.ums.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.walk.mall.tiny.modules.ums.model.UmsBusinessWorkimg;
import com.walk.mall.tiny.modules.ums.service.UmsBusinessWorkimgService;
import com.walk.mall.tiny.common.api.CommonResult;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.walk.mall.tiny.common.api.CommonPage;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
@RequestMapping("/workImg")
public class UmsBusinessWorkimgController {
    @Autowired
    private UmsBusinessWorkimgService umsBusinessWorkimgService;

    @PostMapping("")
    public CommonResult save(@RequestBody UmsBusinessWorkimg umsBusinessWorkimg){
        boolean success = umsBusinessWorkimgService.save(umsBusinessWorkimg);
        if(success){
            return CommonResult.success(null, null);
        }
        return CommonResult.failed();
    }

    @DeleteMapping("")
    public CommonResult delete(@RequestParam(value="id",required = true) Integer id){
        boolean sucess = umsBusinessWorkimgService.removeById(id);
        if(sucess){
            return CommonResult.success(null, null);
        }
        return CommonResult.failed();

    }

    @PutMapping("")
    public CommonResult update(@RequestBody UmsBusinessWorkimg umsBusinessWorkimg){
        boolean sucess = umsBusinessWorkimgService.updateById(umsBusinessWorkimg);
        if(sucess){
            return CommonResult.success(null, null);
        }
        return CommonResult.failed();
    }

    @GetMapping("")
    public CommonResult list(@RequestParam(value="workId", required = true) Integer workId,
                             @RequestParam(value="page", required = false, defaultValue = "1") Integer page,
                             @RequestParam(value="size", required = false, defaultValue = "10") Integer size){
        Page<UmsBusinessWorkimg> umsBusinessWorkimgList = umsBusinessWorkimgService.list(workId,page,size);
        return CommonResult.success(CommonPage.restPage(umsBusinessWorkimgList), null);

    }
    
    
}
