package com.walk.mall.tiny.modules.ums.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.walk.mall.tiny.modules.ums.model.UmsBusinessWorkstar;
import com.walk.mall.tiny.modules.ums.service.UmsBusinessWorkstarService;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.walk.mall.tiny.common.api.CommonPage;
import com.walk.mall.tiny.common.api.CommonResult;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
@RequestMapping("/workStar")
public class UmsBusinessWorkstarController {
    @Autowired
    private UmsBusinessWorkstarService umsBusinessWorkstarService;
    @PostMapping("")
    public CommonResult saveStar(@RequestBody UmsBusinessWorkstar umsBusinessWorkstar){
        boolean sucess = umsBusinessWorkstarService.saveStar(umsBusinessWorkstar);
        if(sucess){
            return CommonResult.success(null, null);
        }
        return CommonResult.failed();

    }

    @GetMapping("")
    // (Integer workId, Integer anchorId, Integer userId, Integer page, Integer size)
    public CommonResult list(@RequestParam(value = "workId", required = false) Integer workId,
                             @RequestParam(value = "anchorId", required = false) Integer anchorId,
                             @RequestParam(value = "userId", required = false) Integer userId,
                             @RequestParam(value = "page", required = true, defaultValue = "1") Integer page,
                             @RequestParam(value = "size", required = true, defaultValue = "10") Integer size){
        
        Page<UmsBusinessWorkstar> all = umsBusinessWorkstarService.list(workId, anchorId, userId, page, size);
        return CommonResult.success(CommonPage.restPage(all), null);

    }
    
    @DeleteMapping("")
    public CommonResult delete(@RequestParam(value = "workId", required = true) Integer workId,
                               @RequestParam(value = "userId", required = true) Integer userId){

        UmsBusinessWorkstar  umsBusinessWorkstar = new UmsBusinessWorkstar();
        umsBusinessWorkstar.setWorkId(workId.longValue());
        umsBusinessWorkstar.setUserId(userId.longValue());
        boolean success = umsBusinessWorkstarService.removeStar(umsBusinessWorkstar);
        if(success){
            return CommonResult.success(null, null);
        }
        return CommonResult.failed();
    }

    
}
