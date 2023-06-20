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
import com.walk.mall.tiny.common.api.CommonResult;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.walk.mall.tiny.common.api.CommonPage;
import com.walk.mall.tiny.modules.ums.model.UmsBusinessWorkcomment;
import com.walk.mall.tiny.modules.ums.service.UmsBusinessWorkcommentService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
@RequestMapping("/workComment")
public class UmsBusinessWorkcommentController {
    @Autowired
    private UmsBusinessWorkcommentService umsBusinessWorkcommentService;
    // (Integer workId, Integer anchorId, Integer userId, Integer page, Integer size)
    // 给作品添加评论
    @PostMapping("")
    public CommonResult save(@RequestBody UmsBusinessWorkcomment umsBusinessWorkcomment){
        boolean success = umsBusinessWorkcommentService.saveComment(umsBusinessWorkcomment);
        if(success){
            return CommonResult.success(null, null);
        }
        return CommonResult.failed();
    }


    
    @GetMapping("")
    public  CommonResult list(@RequestParam(value="workId",required = false) Integer workId,
                @RequestParam(value = "anchorId", required = false) Integer anchorId,
                @RequestParam(value = "userId", required = false) Integer userId,
                @RequestParam(value = "id", required = false) Integer id,
                @RequestParam(value = "page", required = true, defaultValue = "1") Integer page,
                @RequestParam(value = "size", required = true, defaultValue = "10") Integer size,
                @RequestParam(value = "type", required = false) Integer type){
        Page<UmsBusinessWorkcomment> all = umsBusinessWorkcommentService.list(workId, anchorId, userId, id, page, size, type);
        return CommonResult.success(CommonPage.restPage(all));
    }

    @PutMapping("")
    public CommonResult update(@RequestBody UmsBusinessWorkcomment umsBusinessWorkcomment){
        boolean success = umsBusinessWorkcommentService.updateById(umsBusinessWorkcomment);
        if(success){
            return CommonResult.success(null, null);
        }
        return CommonResult.failed();
    }

    @DeleteMapping("")
    public CommonResult<Object> delete(@RequestParam(value = "id", required = true) Integer id){
        boolean success = umsBusinessWorkcommentService.removeById(id);
        if(success){
            return CommonResult.success(null, null);
        }
        return CommonResult.failed();
    }

    

    
}
