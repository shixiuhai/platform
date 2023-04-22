package com.walk.mall.tiny.modules.ums.service.impl;

import java.util.Objects;

import javax.management.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.walk.mall.tiny.modules.ums.mapper.UmsBusinessWorkcommentMapper;
import com.walk.mall.tiny.modules.ums.model.UmsBusinessWorkcomment;
import com.walk.mall.tiny.modules.ums.service.UmsBusinessWorkcommentService;
import com.walk.mall.tiny.modules.ums.service.UmsBusinessWorkService;
import com.walk.mall.tiny.modules.ums.service.UmsAdminService;

@Service
public class UmsBusinessWorkcommentServiceImpl extends ServiceImpl<UmsBusinessWorkcommentMapper,UmsBusinessWorkcomment> implements UmsBusinessWorkcommentService{
    @Autowired
    private UmsBusinessWorkService umsBusinessWorkService;
    @Autowired
    private UmsAdminService umsAdminService;
    
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
    
    // 实现的是作品的评论
    // 作品id(workId),用户id(userId),评论
    public boolean save(UmsBusinessWorkcomment umsBusinessWorkcomment){
        // 设置作者id
        umsBusinessWorkcomment.setAnchorId(umsBusinessWorkService.getById(umsBusinessWorkcomment.getWorkId()).getAuthorId());
        // 设置作者名称
        umsBusinessWorkcomment.setAnchorName(umsBusinessWorkService.getById(umsBusinessWorkcomment.getWorkId()).getAnthorName());
        // 设置用户名
        umsBusinessWorkcomment.setUserName(umsAdminService.getById(umsBusinessWorkcomment.getUserId()).getUsername());
        // 保存
        this.save(umsBusinessWorkcomment);
        return true;
        

    }
}
