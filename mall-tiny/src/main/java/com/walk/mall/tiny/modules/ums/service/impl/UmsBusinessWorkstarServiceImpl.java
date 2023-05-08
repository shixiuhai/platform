package com.walk.mall.tiny.modules.ums.service.impl;

import java.util.Objects;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.walk.mall.tiny.modules.ums.mapper.UmsBusinessWorkstarMapper;
import com.walk.mall.tiny.modules.ums.model.UmsBusinessWorkstar;
import com.walk.mall.tiny.modules.ums.service.UmsBusinessWorkstarService;
import com.walk.mall.tiny.modules.ums.service.UmsAdminService;

import lombok.extern.slf4j.Slf4j;

import com.walk.mall.tiny.modules.ums.service.UmsBusinessWorkService;
@Slf4j
@Service
public class UmsBusinessWorkstarServiceImpl extends ServiceImpl<UmsBusinessWorkstarMapper,UmsBusinessWorkstar> implements UmsBusinessWorkstarService{
    @Autowired
    private UmsBusinessWorkService umsBusinessWorkService;

    @Autowired
    private UmsAdminService umsAdminService;

    public boolean saveStar(UmsBusinessWorkstar umsBusinessWorkstar){
        try{
            umsBusinessWorkstar.setAnchorId(umsBusinessWorkService.getById(umsBusinessWorkstar.getWorkId()).getAuthorId());
            Page<UmsBusinessWorkstar> all = this.page(
                new Page<UmsBusinessWorkstar>(),
                new QueryWrapper<UmsBusinessWorkstar>()
                    .lambda()
                    .eq(!Objects.isNull(umsBusinessWorkstar.getUserId()),UmsBusinessWorkstar::getUserId,umsBusinessWorkstar.getUserId())
                    .eq(!Objects.isNull(umsBusinessWorkstar.getWorkId()),UmsBusinessWorkstar::getWorkId,umsBusinessWorkstar.getWorkId())       
            );
            log.info("--------{}------",all.getRecords().toArray().length);
            if(all.getRecords().toArray().length>=1){
                return true;
            }
            this.saveOrUpdate(umsBusinessWorkstar);
            return true;
        }catch (Exception e) {
            return false;
        } 
    }

    public Page<UmsBusinessWorkstar> list(Integer workId, Integer anchorId, Integer userId, Integer page, Integer size){
        Page<UmsBusinessWorkstar> all = this.page(
            new Page<UmsBusinessWorkstar>(page,size),
            new QueryWrapper<UmsBusinessWorkstar>()
                .lambda()
                .eq(!Objects.isNull(anchorId),UmsBusinessWorkstar::getAnchorId,anchorId)
                .eq(!Objects.isNull(workId),UmsBusinessWorkstar::getWorkId,workId)       
                .eq(!Objects.isNull(userId),UmsBusinessWorkstar::getUserId,userId)       
        );
        all.getRecords().forEach(t->{
            t.setAnchorName(umsAdminService.getById(t.getAnchorId()).getUsername());
            t.setUserName(umsAdminService.getById(t.getUserId()).getUsername());
            t.setWorkName(umsBusinessWorkService.getById(t.getWorkId()).getTitle());
        });
        return all;
    }

    public boolean removeStar(UmsBusinessWorkstar umsBusinessWorkstar){ 
        LambdaQueryWrapper<UmsBusinessWorkstar> lambdaqueryWrapper = new QueryWrapper<UmsBusinessWorkstar>()
            .lambda()
            .eq(!Objects.isNull(umsBusinessWorkstar.getUserId()),UmsBusinessWorkstar::getUserId,umsBusinessWorkstar.getUserId())
            .eq(!Objects.isNull(umsBusinessWorkstar.getWorkId()),UmsBusinessWorkstar::getWorkId,umsBusinessWorkstar.getWorkId());
        this.removeById(this.getOne(lambdaqueryWrapper));
        return true;


    }
     
    
}
