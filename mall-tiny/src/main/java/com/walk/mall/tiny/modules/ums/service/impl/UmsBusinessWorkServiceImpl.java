package com.walk.mall.tiny.modules.ums.service.impl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import cn.hutool.core.util.StrUtil;
import lombok.extern.slf4j.Slf4j;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

import com.walk.mall.tiny.modules.ums.mapper.UmsBusinessWorkMapper;
import com.walk.mall.tiny.modules.ums.model.UmsBusinessWork;
import com.walk.mall.tiny.modules.ums.service.UmsBusinessWorkService;
import com.walk.mall.tiny.utils.DateUtils;
import com.walk.mall.tiny.modules.ums.service.UmsAdminService;
import java.util.Date;
import java.util.Objects;
@Slf4j
@Service
public class UmsBusinessWorkServiceImpl extends ServiceImpl<UmsBusinessWorkMapper,UmsBusinessWork> implements  UmsBusinessWorkService{
    @Autowired
    private UmsAdminService umsAdminService;
    @Override
    public Page<UmsBusinessWork> list(String keyword, Integer id,Integer pageNum, Integer pageSize, Integer type){
        Page<UmsBusinessWork> pages = new Page<>(pageNum,pageSize);
        QueryWrapper<UmsBusinessWork> queryWrapper = new QueryWrapper<>();
        queryWrapper.lambda().orderByDesc(UmsBusinessWork::getCreatedTime).eq(!Objects.isNull(type),UmsBusinessWork::getType,type);
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
        return all;
    }

    public boolean saveWork(UmsBusinessWork umsBusinessWork){
       try{
            umsBusinessWork.setAnthorName(umsAdminService.getById(umsBusinessWork.getAuthorId()).getUsername());
            umsBusinessWork.setCreatedTime(new Date());
            this.save(umsBusinessWork);
            return true;

       }catch (Exception e){
            return false;
       }
    }
    
}
