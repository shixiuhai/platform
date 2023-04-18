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
    public Page<UmsBusinessWorkvideo> list(Integer workId){
        Page<UmsBusinessWorkvideo> pages = new Page<>();
        QueryWrapper<UmsBusinessWorkvideo> queryWrapper = new QueryWrapper<>();
        if(!Objects.isNull(workId)){
            queryWrapper.lambda().eq(UmsBusinessWorkvideo::getWorkId,workId);

        }
        return this.page(pages,queryWrapper);
    }
}
