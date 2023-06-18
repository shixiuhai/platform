package com.walk.mall.tiny.modules.ums.service.impl;

import java.util.Objects;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alibaba.druid.util.StringUtils;
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
                    .eq(!Objects.isNull(umsBusinessWorkstar.getType()),UmsBusinessWorkstar::getType,umsBusinessWorkstar.getType())
                    .eq(!Objects.isNull(umsBusinessWorkstar.getCommentId()),UmsBusinessWorkstar::getCommentId,umsBusinessWorkstar.getCommentId())     
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

    public Page<UmsBusinessWorkstar> list(Integer workId, Integer commentId, Integer anchorId, Integer userId, Integer type,Integer page, Integer size){
        Page<UmsBusinessWorkstar> all = this.page(
            new Page<UmsBusinessWorkstar>(page,size),
            new QueryWrapper<UmsBusinessWorkstar>()
                .lambda()
                .eq(!Objects.isNull(anchorId),UmsBusinessWorkstar::getAnchorId,anchorId)
                .eq(!Objects.isNull(workId),UmsBusinessWorkstar::getWorkId,workId)  
                .eq(!Objects.isNull(commentId),UmsBusinessWorkstar::getCommentId,commentId)       
                .eq(!Objects.isNull(userId),UmsBusinessWorkstar::getUserId,userId) 
                .eq(!Objects.isNull(type),UmsBusinessWorkstar::getType,type)        
        );
        all.getRecords().forEach(t->{
            if(umsAdminService.getById(t.getAnchorId())!=null){
                t.setAnchorName(umsAdminService.getById(t.getAnchorId()).getNickName());
                t.setUserName(umsAdminService.getById(t.getUserId()).getNickName());
                t.setWorkName(umsBusinessWorkService.getById(t.getWorkId()).getTitle());
            }
            
        });
        return all;
    }

    public boolean removeStar(UmsBusinessWorkstar umsBusinessWorkstar){ 
        try{
            LambdaQueryWrapper<UmsBusinessWorkstar> lambdaqueryWrapper = new QueryWrapper<UmsBusinessWorkstar>()
                .lambda()
                .eq(!Objects.isNull(umsBusinessWorkstar.getUserId()),UmsBusinessWorkstar::getUserId,umsBusinessWorkstar.getUserId())
                .eq(!Objects.isNull(umsBusinessWorkstar.getWorkId()),UmsBusinessWorkstar::getWorkId,umsBusinessWorkstar.getWorkId());
            this.removeById(this.getOne(lambdaqueryWrapper).getId());
            return true;

        }catch (Exception e){
            return false;
        }
        


    }
     
    public boolean isStar(Integer workId,Integer commentId,Integer userId, Integer type){
        UmsBusinessWorkstar umsBusinessWorkstar = this.getOne(
            new QueryWrapper<UmsBusinessWorkstar>()
            .eq(Objects.nonNull(workId), "work_id", workId)
            .eq(Objects.nonNull(userId),"user_id",userId)            
            .eq(Objects.nonNull(userId),"type",type)
            .eq(Objects.nonNull(commentId),"comment_id",commentId)

        );
        if(Objects.nonNull(umsBusinessWorkstar)){
            return true;
        }
        return false;
            
    }

    // 只有作品和动态有收藏
    public boolean isCollect(Integer workId,Integer userId, Integer type){
        UmsBusinessWorkstar umsBusinessWorkstar = this.getOne(
            new QueryWrapper<UmsBusinessWorkstar>()
            .eq(Objects.nonNull(workId), "work_id", workId)
            .eq(Objects.nonNull(userId),"user_id",userId)            
            .eq(Objects.nonNull(userId),"type",type)
        );
        if(Objects.nonNull(umsBusinessWorkstar)){
            return true;
        }
        
        return false;

    }

    public Long StarNumber(Integer workId,Integer commentId,Integer type){
        Long countNumber = this.count(
            new QueryWrapper<UmsBusinessWorkstar>()
            .eq(Objects.nonNull(workId), "work_id", workId)
            .eq(Objects.nonNull(workId), "type", type)
            .eq(Objects.nonNull(commentId), "comment_id", commentId)

        );
        return countNumber;

    }

    
}
