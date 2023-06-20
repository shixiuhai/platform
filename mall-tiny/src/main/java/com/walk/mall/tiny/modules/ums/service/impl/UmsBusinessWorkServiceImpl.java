package com.walk.mall.tiny.modules.ums.service.impl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import cn.hutool.core.util.StrUtil;
import com.walk.mall.tiny.security.util.SpringUtil;
import lombok.extern.slf4j.Slf4j;


import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

import com.walk.mall.tiny.modules.ums.mapper.UmsBusinessWorkMapper;
import com.walk.mall.tiny.modules.ums.model.UmsBusinessWork;
import com.walk.mall.tiny.modules.ums.service.UmsBusinessWorkService;
import com.walk.mall.tiny.modules.ums.service.UmsBusinessWorkstarService;
import com.walk.mall.tiny.utils.DateUtils;
import com.walk.mall.tiny.modules.ums.service.UmsAdminService;
import com.walk.mall.tiny.modules.ums.enumeration.StarType;
import java.util.Date;
import java.util.Objects;
@Slf4j
@Service
public class UmsBusinessWorkServiceImpl extends ServiceImpl<UmsBusinessWorkMapper,UmsBusinessWork> implements  UmsBusinessWorkService{
    @Autowired
    private UmsAdminService umsAdminService;
    @Autowired
    private UmsBusinessWorkstarService umsBusinessWorkstarService;
    @Override
    public Page<UmsBusinessWork> list(String keyword, Integer id,Integer anchorId, Integer pageNum, Integer pageSize, Integer type){
        Page<UmsBusinessWork> pages = new Page<>(pageNum,pageSize);
        QueryWrapper<UmsBusinessWork> queryWrapper = new QueryWrapper<>();
        queryWrapper.lambda()
        .orderByDesc(UmsBusinessWork::getCreatedTime)
        .eq(!Objects.isNull(type),UmsBusinessWork::getType,type)
        .eq(!Objects.isNull(anchorId),UmsBusinessWork::getAuthorId, anchorId);
        
        if(StrUtil.isNotEmpty(keyword)){
            queryWrapper.lambda().like(UmsBusinessWork::getAnthorName,keyword);
            queryWrapper.lambda().or().like(UmsBusinessWork::getTitle,keyword);
        }
        
        if(!Objects.isNull(id)){
            queryWrapper.lambda().eq(UmsBusinessWork::getId,id);
            UmsBusinessWork umsBusinessWork = new UmsBusinessWork();
            umsBusinessWork = this.getById(id);
            umsBusinessWork.setViewNumber(this.getById(id).getViewNumber()+1);
            this.updateById(umsBusinessWork);
        }
        Page<UmsBusinessWork> all = this.page(pages,queryWrapper);
        Long userId = SpringUtil.getUserId();
        all.getRecords().forEach(t->{
            // 设置返回头像
            if(umsAdminService.getById(t.getAuthorId())!=null){
                t.setIcon(umsAdminService.getById(t.getAuthorId()).getIcon());
            }
            // 默认设置点赞为false
            t.setStar(false);
            // 默认设置点赞总是为0
            t.setStarNumber(0L);
            // 默认设置收藏为false
            t.setCollect(false);
            if(umsBusinessWorkstarService.isStar(t.getId().intValue(),null, userId.intValue(), t.getType())){
                t.setStar(true);
            }
            
            if(umsBusinessWorkstarService.StarNumber(t.getId().intValue(),null,t.getType())!=null){
                t.setStarNumber(umsBusinessWorkstarService.StarNumber(t.getId().intValue(),null,t.getType()));
            }

            if(type==1||type==2){
                // 作品和动态的收藏需要+4
                if(umsBusinessWorkstarService.isCollect(t.getId().intValue(), userId.intValue(), type+4)){
                    t.setCollect(true);
                }
            }
            
        });

        return all;
    }

    public boolean saveWork(UmsBusinessWork umsBusinessWork){
       try{
            // 这里的主持人人名称是用户表的nickName
            umsBusinessWork.setAnthorName(umsAdminService.getById(umsBusinessWork.getAuthorId()).getNickName());
            umsBusinessWork.setCreatedTime(new Date());
            this.save(umsBusinessWork);
            return true;

       }catch (Exception e){
            return false;
       }
    }
    
}
