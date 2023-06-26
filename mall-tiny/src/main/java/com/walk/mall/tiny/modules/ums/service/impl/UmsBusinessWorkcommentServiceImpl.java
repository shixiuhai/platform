package com.walk.mall.tiny.modules.ums.service.impl;

import java.util.Date;
import java.util.List;
import java.util.Objects;

import javax.management.Query;

import org.springframework.beans.factory.annotation.Autowired;
import com.walk.mall.tiny.security.util.SpringUtil;
import org.springframework.stereotype.Service;

import com.alibaba.druid.util.StringUtils;
import org.springframework.util.CollectionUtils;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.walk.mall.tiny.modules.ums.mapper.UmsBusinessWorkcommentMapper;
import com.walk.mall.tiny.modules.ums.model.UmsBusinessWorkcomment;
import com.walk.mall.tiny.modules.ums.service.UmsBusinessWorkcommentService;
import com.walk.mall.tiny.modules.ums.service.UmsBusinessWorkstarService;
import com.walk.mall.tiny.security.util.SpringUtil;
import com.walk.mall.tiny.modules.ums.service.UmsBusinessWorkService;
import com.walk.mall.tiny.modules.ums.service.UmsAdminService;

@Service
public class UmsBusinessWorkcommentServiceImpl extends ServiceImpl<UmsBusinessWorkcommentMapper,UmsBusinessWorkcomment> implements UmsBusinessWorkcommentService{
    @Autowired
    private UmsBusinessWorkService umsBusinessWorkService;
    @Autowired
    private UmsAdminService umsAdminService;
    @Autowired
    private UmsBusinessWorkstarService umsBusinessWorkstarService;
    
    public Page<UmsBusinessWorkcomment> list(Integer workId, Integer anchorId, Integer userId, Integer id,Integer page, Integer size, Integer type){
        Page<UmsBusinessWorkcomment> all = this.page(
            new Page<UmsBusinessWorkcomment>(page,size),
            new QueryWrapper<UmsBusinessWorkcomment>().lambda()
                .eq(!Objects.isNull(workId),UmsBusinessWorkcomment::getWorkId,workId)
                .eq(!Objects.isNull(anchorId),UmsBusinessWorkcomment::getAnchorId,anchorId)
                .eq(!Objects.isNull(userId),UmsBusinessWorkcomment::getUserId,userId)
                .eq(!Objects.isNull(type),UmsBusinessWorkcomment::getType,type)
                .eq(!Objects.isNull(id),UmsBusinessWorkcomment::getId,id)
                // 时间降序排序
                .orderByDesc(UmsBusinessWorkcomment::getCreatedTime)
                // 一级评论没有parent_id
                .isNull(Objects.isNull(id),UmsBusinessWorkcomment::getParentId)
        );
        Long nowUserId = SpringUtil.getUserId();
        
        // 添加评论人头像
        all.getRecords().forEach(t->{
            if(umsAdminService.getById(t.getUserId())!=null){
                t.setIcon(umsAdminService.getById(t.getUserId()).getIcon());
                
                
            }
            
            // 判断是否存在子集，如果存在子集，将子集添加到到children里
            List<UmsBusinessWorkcomment> umsBusinessWorkcommentList = this.list(
                new QueryWrapper<UmsBusinessWorkcomment>().lambda()
                .eq(t.getId()!=null,UmsBusinessWorkcomment::getParentId,t.getId())
            );
            if(!CollectionUtils.isEmpty(umsBusinessWorkcommentList)){
                umsBusinessWorkcommentList.forEach( c->{ 
                    c.setIcon(umsAdminService.getById(c.getUserId()).getIcon());
                    // 默认设置点赞为false 默认要为评论的点赞+2
                    c.setStar(false);
                    // 默认设置评论点赞数量为0
                    c.setStarNumber(0L);
                    if(type==1||type==2){
                        if(umsBusinessWorkstarService.isStar(c.getWorkId().intValue(),c.getId().intValue(),nowUserId.intValue(), c.getType()+2)){
                            c.setStar(true);
                        }
                    
                        if(umsBusinessWorkstarService.StarNumber(c.getWorkId().intValue(),c.getId().intValue(),c.getType())!=null){
                            c.setStarNumber(umsBusinessWorkstarService.StarNumber(c.getWorkId().intValue(),c.getId().intValue(),c.getType()+2));
                        }

                    }
                });
                t.setChildren(umsBusinessWorkcommentList);
            }

            // 默认设置点赞为false 默认要为评论的点赞+2
            t.setStar(false);
            // 默认设置评论点赞数量为0
            t.setStarNumber(0L);
            if(type==1||type==2){
                if(umsBusinessWorkstarService.isStar(t.getWorkId().intValue(),t.getId().intValue(),nowUserId.intValue(), t.getType()+2)){
                    t.setStar(true);
                }
            
                if(umsBusinessWorkstarService.StarNumber(t.getWorkId().intValue(),t.getId().intValue(),t.getType())!=null){
                    t.setStarNumber(umsBusinessWorkstarService.StarNumber(t.getWorkId().intValue(),t.getId().intValue(),t.getType()+2));
                }

            }
        });
        return all;

    }
    
    // 实现的是作品的评论
    // 作品id(workId),用户id(userId),评论内容(user_comment)
    public boolean saveComment(UmsBusinessWorkcomment umsBusinessWorkcomment){
        try {
            // 设置作品作者id
            umsBusinessWorkcomment.setAnchorId(umsBusinessWorkService.getById(umsBusinessWorkcomment.getWorkId()).getAuthorId());
            // 设置作品作者名称
            umsBusinessWorkcomment.setAnchorName(umsBusinessWorkService.getById(umsBusinessWorkcomment.getWorkId()).getAnthorName());
            // 设置作品评论用户名
            umsBusinessWorkcomment.setUserName(umsAdminService.getById(umsBusinessWorkcomment.getUserId()).getNickName());
            // 设置作品被评论人的名字
            if(umsBusinessWorkcomment.getRespondentId()!=null){
                umsBusinessWorkcomment.setRespondentName(umsAdminService.getById(umsBusinessWorkcomment.getRespondentId()).getNickName());
            }
            umsBusinessWorkcomment.setCreatedTime(new Date());
            // 保存
            this.save(umsBusinessWorkcomment);
            return true;
            
        } catch (Exception e) {
            return false;
        }
        
        

    }
}
