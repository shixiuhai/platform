package com.walk.mall.tiny.modules.ums.service;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;

import com.walk.mall.tiny.modules.ums.model.UmsBusinessCompany;

public interface UmsBusinessCompanyService extends IService<UmsBusinessCompany>{
    Page<UmsBusinessCompany> list(Integer pageNum,Integer pageSize);
}
