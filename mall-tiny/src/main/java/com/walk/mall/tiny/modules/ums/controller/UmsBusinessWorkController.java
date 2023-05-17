package com.walk.mall.tiny.modules.ums.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestBody;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.walk.mall.tiny.common.api.CommonResult;
import com.walk.mall.tiny.common.api.CommonPage;
import lombok.extern.slf4j.Slf4j;

import com.walk.mall.tiny.modules.ums.model.UmsBusinessWork;
import com.walk.mall.tiny.modules.ums.service.UmsBusinessWorkService;



@Slf4j
@RestController
@RequestMapping("/work")
public class UmsBusinessWorkController {
    @Autowired
    private UmsBusinessWorkService umsBusinessWorkService;
    @GetMapping("")
    public CommonResult list(@RequestParam(value="keyWord",required = false) String keyWord,
                             @RequestParam(value="id",required = false) Integer id,
                             @RequestParam(value="pageNum",defaultValue = "1",required = false) Integer pageNum,
                             @RequestParam(value="pageNum",defaultValue = "10",required = false) Integer pageSize,
                             @RequestParam(value="type",required = false) Integer type){
        Page<UmsBusinessWork> umsBusinessWorkList= umsBusinessWorkService.list(keyWord,id,pageNum,pageSize,type);
        return CommonResult.success(CommonPage.restPage(umsBusinessWorkList));
    }

    @PostMapping("")
    public CommonResult save(@RequestBody UmsBusinessWork umsBusinessWork){
        boolean sucess = umsBusinessWorkService.saveWork(umsBusinessWork);
        if(sucess){
            return CommonResult.success(null, null);
        }
        return CommonResult.failed();
    }
    
    @DeleteMapping("")
    public CommonResult delete(@RequestParam(value = "id",required = true) Integer id){
        boolean success = umsBusinessWorkService.removeById(id);
        if(success){
            return CommonResult.success(null, null);
        }
        return CommonResult.failed();
    }

    @PutMapping("")
    public CommonResult update(@RequestBody UmsBusinessWork umsBusinessWork){
        boolean sucess = umsBusinessWorkService.updateById(umsBusinessWork);
        if(sucess){
            return CommonResult.success(null, null);
        }
        return CommonResult.failed();
    }


    

    
}
