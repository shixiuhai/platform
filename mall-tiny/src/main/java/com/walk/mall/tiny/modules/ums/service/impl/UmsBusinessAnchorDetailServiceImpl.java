package com.walk.mall.tiny.modules.ums.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.walk.mall.tiny.modules.ums.mapper.UmsBusinessAnchorDetailMapper;
import com.walk.mall.tiny.modules.ums.model.UmsBusinessAnchorDetail;
import com.walk.mall.tiny.modules.ums.service.UmsAdminService;
import com.walk.mall.tiny.modules.ums.service.UmsBusinessAnchorDetailService;
import java.util.Objects;
@Service
public class UmsBusinessAnchorDetailServiceImpl extends ServiceImpl<UmsBusinessAnchorDetailMapper,UmsBusinessAnchorDetail> implements UmsBusinessAnchorDetailService{
    @Autowired
    private UmsAdminService umsAdminService;

    @Override
    public boolean saveUserDetail(UmsBusinessAnchorDetail umsBusinessAnchorDetail){
        if(umsAdminService.getById(umsBusinessAnchorDetail.getAnchorId())!=null){
            umsBusinessAnchorDetail.setAnchorName(umsAdminService.getById(umsBusinessAnchorDetail.getAnchorId()).getNickName());
        }
        
        this.saveOrUpdate(umsBusinessAnchorDetail);
        return true;
    }
    
    public Page<UmsBusinessAnchorDetail> list(Integer id, Integer page, Integer size){
        Page<UmsBusinessAnchorDetail> all = this.page(
            new Page<UmsBusinessAnchorDetail>(page,size),
            new QueryWrapper<UmsBusinessAnchorDetail>()
                .lambda()
                .eq(!Objects.isNull(id),UmsBusinessAnchorDetail::getAnchorId,id)
        );
        // 设置头像地址
        all.getRecords().forEach(t->{
           if(umsAdminService.getById(t.getAnchorId())!=null){
                t.setIcon(umsAdminService.getById(t.getAnchorId()).getIcon());
           }
        });
        return all;
    }
    
}
