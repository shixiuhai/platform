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

import com.walk.mall.tiny.modules.ums.model.UmsBusinessWorkreserve;
import com.walk.mall.tiny.modules.ums.service.UmsBusinessWorkreserveService;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.walk.mall.tiny.common.api.CommonPage;
import com.walk.mall.tiny.common.api.CommonResult;

@RestController
@RequestMapping("/workReserve")
public class UmsBusinessWorkreserveController {
    @Autowired
    private  UmsBusinessWorkreserveService umsBusinessWorkreserveService;
    
    @PostMapping("")
    public CommonResult saveReserve(@RequestBody  UmsBusinessWorkreserve umsBusinessWorkreserve){
        boolean success = umsBusinessWorkreserveService.save(umsBusinessWorkreserve);
        if(success){
            return CommonResult.success(null, null);
        }
        return CommonResult.failed();
    }

    @DeleteMapping("")
    public CommonResult delete(@RequestParam(value = "id", required = true) Integer id){
        boolean success = umsBusinessWorkreserveService.removeById(id);
        if(success){
            return CommonResult.success(null, null);
        }
        return CommonResult.failed();

    }

    @PutMapping("")
    public CommonResult update(@RequestBody UmsBusinessWorkreserve umsBusinessWorkreserve){
        boolean success = umsBusinessWorkreserveService.updateById(umsBusinessWorkreserve);
        if(success){
            return CommonResult.success(null, null);
        }
        return CommonResult.failed();
    }
    
    @GetMapping("")
    public CommonResult list(@RequestParam(value = "page", required = true, defaultValue = "1") Integer page,
                             @RequestParam(value = "size", required = true, defaultValue = "10") Integer size){
        Page<UmsBusinessWorkreserve> all = umsBusinessWorkreserveService.list(page, size);
        return CommonResult.success(CommonPage.restPage(all), null);

    }
    
    
}
