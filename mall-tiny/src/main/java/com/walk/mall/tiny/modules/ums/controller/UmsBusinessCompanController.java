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


import com.walk.mall.tiny.modules.ums.model.UmsBusinessCompany;
import com.walk.mall.tiny.modules.ums.service.UmsBusinessCompanyService;







@Slf4j
@RestController
@RequestMapping("/companyDescription")
public class UmsBusinessCompanController {
    @Autowired
    private UmsBusinessCompanyService umsBusinessCompanyService;
    @GetMapping("")
    //CommonPage<UmsAdmin>
    public CommonResult<CommonPage<UmsBusinessCompany>> list(@RequestParam(value = "pageNum", required = false,defaultValue = "1") Integer pageNum,
                             @RequestParam(value = "pageSize",required = false,defaultValue = "10") Integer pageSize){

        Page<UmsBusinessCompany> companyList = umsBusinessCompanyService.list(pageNum, pageSize);
        return CommonResult.success(CommonPage.restPage(companyList));                 
            

    }

    @PostMapping("")
    public CommonResult save(@RequestBody UmsBusinessCompany umsBusinessCompany){
        umsBusinessCompanyService.save(umsBusinessCompany);
        return CommonResult.success(null);
    }

    @PutMapping("")
    public CommonResult update(@RequestBody UmsBusinessCompany umsBusinessCompany){
        boolean success = umsBusinessCompanyService.updateById(umsBusinessCompany);
        if (success) {
            return CommonResult.success(null);
        }
        return CommonResult.failed();

    }

    @DeleteMapping("")
    public CommonResult delete(@RequestParam(value = "id",required = true) Long id){
        boolean success = umsBusinessCompanyService.removeById(id);
        if (success) {
            return CommonResult.success(null);
        }
        return CommonResult.failed();

    }


    
}
