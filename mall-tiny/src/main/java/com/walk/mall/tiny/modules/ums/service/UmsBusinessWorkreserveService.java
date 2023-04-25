package com.walk.mall.tiny.modules.ums.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.walk.mall.tiny.modules.ums.model.UmsBusinessWorkreserve;

public interface UmsBusinessWorkreserveService extends IService<UmsBusinessWorkreserve>{
    Page<UmsBusinessWorkreserve> list(Integer page, Integer size);
    
}
