package com.walk.mall.tiny.modules.ums.service.impl;
import org.springframework.stereotype.Service;
import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

import com.walk.mall.tiny.modules.ums.mapper.UmsBusinessWorkMapper;
import com.walk.mall.tiny.modules.ums.model.UmsBusinessWork;
import com.walk.mall.tiny.modules.ums.service.UmsBusinessWorkService;
@Service
public class UmsBusinessWorkServiceImpl extends ServiceImpl<UmsBusinessWorkMapper,UmsBusinessWork> implements  UmsBusinessWorkService{
    @Override
    public Page<UmsBusinessWork> list(String keyword, Integer pageNum, Integer pageSize){
        Page<UmsBusinessWork> pages = new Page<>(pageNum,pageSize);
        QueryWrapper<UmsBusinessWork> queryWrapper = new QueryWrapper<>();
        queryWrapper.lambda().orderByDesc(UmsBusinessWork::getCreatedTime);
        if(StrUtil.isNotEmpty(keyword)){
            queryWrapper.lambda().like(UmsBusinessWork::getAnthorName,keyword);
            queryWrapper.lambda().or().like(UmsBusinessWork::getTitle,keyword);

        }
        return this.page(pages,queryWrapper);


    }
    
}
