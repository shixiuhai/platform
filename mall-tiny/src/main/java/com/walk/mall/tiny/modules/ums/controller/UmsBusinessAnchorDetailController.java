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
import com.walk.mall.tiny.modules.ums.model.UmsAdmin;
import com.walk.mall.tiny.modules.ums.model.UmsBusinessAnchorDetail;
import com.walk.mall.tiny.modules.ums.service.UmsAdminService;
import com.walk.mall.tiny.modules.ums.service.UmsBusinessAnchorDetailService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
@RequestMapping("/anchorDetail")
public class UmsBusinessAnchorDetailController {
    @Autowired 
    private UmsBusinessAnchorDetailService umsBusinessAnchorDetailService;
    @Autowired
    private UmsAdminService umsAdminService;
    
    @PostMapping("")
    public CommonResult saveUserDetail(@RequestBody UmsBusinessAnchorDetail umsBusinessAnchorDetail){
        boolean success = umsBusinessAnchorDetailService.saveUserDetail(umsBusinessAnchorDetail);
        UmsAdmin umsAdmin = umsAdminService.getById(umsBusinessAnchorDetail.getAnchorId());
        umsAdmin.setNickName(umsBusinessAnchorDetail.getAnchorName());
        umsAdmin.setIcon(umsBusinessAnchorDetail.getIcon());
        // 更新用户的nickName和icon
        umsAdminService.update(umsAdmin.getId(), umsAdmin);
        if(success){
            return CommonResult.success(null, null);
        }
        return CommonResult.failed();
    }

    @DeleteMapping("")
    public CommonResult delete(@RequestParam(value = "id",required = true) Integer id){
        boolean success = umsBusinessAnchorDetailService.removeById(id);
        if(success){
            return CommonResult.success(null, null);
        }
        return CommonResult.failed();
    }

    @PutMapping("")
    public CommonResult update(@RequestBody UmsBusinessAnchorDetail umsBusinessAnchorDetail){
        boolean success = umsBusinessAnchorDetailService.updateById(umsBusinessAnchorDetail);
        if(success){
            return CommonResult.success(null, null);
        }
        return CommonResult.failed();
    }

    @GetMapping("")
    public CommonResult list(@RequestParam(value = "anchorId", required = false) Integer id,
                             @RequestParam(value = "page", required = true, defaultValue = "1") Integer page,
                             @RequestParam(value = "size", required = true, defaultValue = "10") Integer size){
        Page<UmsBusinessAnchorDetail> all = umsBusinessAnchorDetailService.list(id, page, size);
        return CommonResult.success(CommonPage.restPage(all), null);
    }
    
}
