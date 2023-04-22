package com.walk.mall.tiny.modules.ums.service.impl;

import java.util.Objects;

import javax.management.Query;

import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.walk.mall.tiny.modules.ums.mapper.UmsBusinessWorkcommentMapper;
import com.walk.mall.tiny.modules.ums.model.UmsBusinessWorkcomment;
import com.walk.mall.tiny.modules.ums.service.UmsBusinessWorkcommentService;

@Service
public class UmsBusinessWorkcommentServiceImpl extends ServiceImpl<UmsBusinessWorkcommentMapper,UmsBusinessWorkcomment> implements UmsBusinessWorkcommentService{
    public Page<UmsBusinessWorkcomment> list(Integer workId, Integer anchorId, Integer userId, Integer page, Integer size){
        Page<UmsBusinessWorkcomment> all = this.page(
            new Page<UmsBusinessWorkcomment>(page,size),
            new QueryWrapper<UmsBusinessWorkcomment>().lambda()
                .eq(!Objects.isNull(workId),UmsBusinessWorkcomment::getWorkId,workId)
                .eq(!Objects.isNull(anchorId),UmsBusinessWorkcomment::getAnchorId,anchorId)
                .eq(!Objects.isNull(userId),UmsBusinessWorkcomment::getUserId,userId)
        );
        return all;

    }
    
}
