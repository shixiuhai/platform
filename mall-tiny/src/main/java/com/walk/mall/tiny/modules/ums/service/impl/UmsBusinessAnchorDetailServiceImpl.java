package com.walk.mall.tiny.modules.ums.service.impl;

import org.apache.logging.log4j.message.ReusableMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.walk.mall.tiny.common.service.RedisService;
import com.walk.mall.tiny.modules.ums.mapper.UmsBusinessAnchorDetailMapper;
import com.walk.mall.tiny.modules.ums.model.UmsAdmin;
import com.walk.mall.tiny.modules.ums.model.UmsBusinessAnchorDetail;
import com.walk.mall.tiny.modules.ums.service.UmsAdminService;
import com.walk.mall.tiny.modules.ums.service.UmsBusinessAnchorDetailService;
import java.util.Objects;
@Service
public class UmsBusinessAnchorDetailServiceImpl extends ServiceImpl<UmsBusinessAnchorDetailMapper,UmsBusinessAnchorDetail> implements UmsBusinessAnchorDetailService{
    @Autowired
    private UmsAdminService umsAdminService;
    @Autowired
    private RedisService redisService;



    @Override
    public boolean saveUserDetail(UmsBusinessAnchorDetail umsBusinessAnchorDetail){
        UmsAdmin umsAdmin = umsAdminService.getById(umsBusinessAnchorDetail.getAnchorId());
        umsAdmin.setNickName(umsBusinessAnchorDetail.getAnchorName());
        umsAdmin.setIcon(umsBusinessAnchorDetail.getIcon());
        // 更新用户的nickName和icon
        umsAdminService.update(umsAdmin.getId(), umsAdmin);
        if(umsAdmin!=null){
            if(umsBusinessAnchorDetail.getAnchorName()==null){
                umsBusinessAnchorDetail.setAnchorName(umsAdminService.getById(umsBusinessAnchorDetail.getAnchorId()).getNickName());
            }
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
                .orderByAsc(UmsBusinessAnchorDetail::getSortId)
        );
        // // 设置头像地址
        // all.getRecords().forEach(t->{
        //    if(umsAdminService.getById(t.getAnchorId())!=null){
        //         t.setIcon(umsAdminService.getById(t.getAnchorId()).getIcon());
        //    }
        // });
        return all;
    }
    
    public UmsBusinessAnchorDetail listUserDay(){
        if(redisService.hasKey("主持人轮播时间")){
            UmsBusinessAnchorDetail umsBusinessAnchorDetail = this.getOne(
                new QueryWrapper<UmsBusinessAnchorDetail>()
                .eq("id",Integer.parseInt(redisService.get("主持人轮播id").toString()))
            );
            return umsBusinessAnchorDetail;

        }
        // 设置过期时间
        redisService.set("主持人轮播时间", 1, 86400L);
        // 一天展示一个主持人
        if(redisService.hasKey("主持人轮播id")){
            Integer id = Integer.parseInt(redisService.get("主持人轮播id").toString());
            UmsBusinessAnchorDetail umsBusinessAnchorDetail = this.getOne(
                new QueryWrapper<UmsBusinessAnchorDetail>()
                .gt("id",id)
                .orderByAsc("id")
                .last("limit 1") 
            );
            
            // 如果没有查询到说明设置的id到最后了
            if(umsBusinessAnchorDetail==null){
                redisService.set("主持人轮播id",0);
                UmsBusinessAnchorDetail umsBusinessAnchorDetail1 = this.getOne(
                    new QueryWrapper<UmsBusinessAnchorDetail>()
                    .gt("id",0)
                    .orderByAsc("id")
                    .last("limit 1")
                );
                if(umsBusinessAnchorDetail1!=null){
                    redisService.set("主持人轮播id",umsBusinessAnchorDetail1.getId());
                }
                return umsBusinessAnchorDetail1;                
            }

            redisService.set("主持人轮播id",umsBusinessAnchorDetail.getId());
            return umsBusinessAnchorDetail;

        }else{
            redisService.set("主持人轮播id",0);
            UmsBusinessAnchorDetail umsBusinessAnchorDetail3 = this.getOne(
                new QueryWrapper<UmsBusinessAnchorDetail>()
                .gt("id",0)
                .orderByAsc("id")
                .last("limit 1") 
            );
            if(umsBusinessAnchorDetail3!=null){
                redisService.set("主持人轮播id",umsBusinessAnchorDetail3.getId());
            }
            return umsBusinessAnchorDetail3;
        }

    }
}
