package com.walk.mall.tiny.modules.ums.service.impl;

import java.util.Objects;

import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.walk.mall.tiny.modules.ums.mapper.UmsBusinessWorkimgMapper;
import com.walk.mall.tiny.modules.ums.model.UmsBusinessWorkimg;
import com.walk.mall.tiny.modules.ums.service.UmsBusinessWorkimgService;

@Service
public class UmsBusinessWorkimgServiceImpl extends ServiceImpl<UmsBusinessWorkimgMapper,UmsBusinessWorkimg> implements UmsBusinessWorkimgService{
    public Page<UmsBusinessWorkimg> list(Integer workId){
        Page<UmsBusinessWorkimg> pages = new Page<>();
        QueryWrapper<UmsBusinessWorkimg> queryWrapper = new QueryWrapper<>();
        if(!Objects.isNull(workId)){
            queryWrapper.lambda().eq(UmsBusinessWorkimg::getWorkId,workId);
        }
        return this.page(pages,queryWrapper);

    }
    
}
