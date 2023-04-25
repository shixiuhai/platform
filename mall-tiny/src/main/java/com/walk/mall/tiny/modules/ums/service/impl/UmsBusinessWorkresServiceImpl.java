package com.walk.mall.tiny.modules.ums.service.impl;

import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.walk.mall.tiny.modules.ums.mapper.UmsBusinessWorkreserveMapper;
import com.walk.mall.tiny.modules.ums.model.UmsBusinessWorkreserve;
import com.walk.mall.tiny.modules.ums.service.UmsBusinessWorkreserveService;

@Service
public class UmsBusinessWorkresServiceImpl extends ServiceImpl<UmsBusinessWorkreserveMapper,UmsBusinessWorkreserve> implements UmsBusinessWorkreserveService{
    @Override
    public Page<UmsBusinessWorkreserve> list(Integer page, Integer size){
        Page<UmsBusinessWorkreserve> all = this.page(
            new Page<UmsBusinessWorkreserve>(page,size),
            new QueryWrapper<UmsBusinessWorkreserve>()
        );
        return all;
    }

    @Override
    public boolean reserveStatus(Integer id,Integer Status){
        UmsBusinessWorkreserve umsBusinessWorkreserve = new UmsBusinessWorkreserve();
        umsBusinessWorkreserve = this.getById(id);
        umsBusinessWorkreserve.setStatus(Status);
        this.updateById(umsBusinessWorkreserve);
        return true;
    }
    
}
