package com.walk.mall.tiny.modules.ums.service.impl;

import java.util.Objects;

import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.walk.mall.tiny.modules.ums.mapper.UmsBusinessWorkvideoMapper;
import com.walk.mall.tiny.modules.ums.model.UmsBusinessWorkvideo;
import com.walk.mall.tiny.modules.ums.service.UmsBusinessWorkvideoService;

@Service
public class UmsBusinessWorkvideoServiceImpl extends ServiceImpl<UmsBusinessWorkvideoMapper,UmsBusinessWorkvideo> implements UmsBusinessWorkvideoService{
    public Page<UmsBusinessWorkvideo> list(Integer workId,Integer page, Integer size, Integer type){
        Page<UmsBusinessWorkvideo> all = this.page(
            new Page<UmsBusinessWorkvideo>(page,size),
            new QueryWrapper<UmsBusinessWorkvideo>()
            .lambda()
            .eq(!Objects.isNull(workId),UmsBusinessWorkvideo::getWorkId,workId)
            .eq(!Objects.isNull(type),UmsBusinessWorkvideo::getType,type)
        );
        return all;
    }
}
