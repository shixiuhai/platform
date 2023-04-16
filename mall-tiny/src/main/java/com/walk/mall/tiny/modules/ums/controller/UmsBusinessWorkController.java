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
                @RequestParam(value="pageNum",defaultValue = "1",required = false) Integer pageNum,
                @RequestParam(value="pageNum",defaultValue = "10",required = false) Integer pageSize){
        Page<UmsBusinessWork> umsBusinessWorkList= umsBusinessWorkService.list(keyWord,pageNum,pageSize);
        return CommonResult.success(CommonPage.restPage(umsBusinessWorkList));


    }


    

    
}