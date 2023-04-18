package com.walk.mall.tiny.modules.ums.service.impl;
import org.springframework.stereotype.Service;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

import com.walk.mall.tiny.modules.ums.mapper.UmsBusinessCompanyMapper;
import com.walk.mall.tiny.modules.ums.model.UmsBusinessCompany;
import com.walk.mall.tiny.modules.ums.service.UmsBusinessCompanyService;

import lombok.extern.slf4j.Slf4j;
@Slf4j
@Service
public class UmsBusinessCompanyServiceImpl extends ServiceImpl<UmsBusinessCompanyMapper,UmsBusinessCompany> implements UmsBusinessCompanyService {
    @Override
    public Page<UmsBusinessCompany> list(Integer pageNum,Integer pageSize){
        Page<UmsBusinessCompany> pages = new Page<>(pageNum,pageSize);
        // QueryWrapper<UmsBusinessCompany> wrapper = new QueryWrapper<>();
        
        // Page<UmsBusinessCompany> a= this.page(pages);
        // a.getRecords().forEach(t->{
        //     t.setArea("你号");
        // });
        
        //return page(pages);
        return this.page(pages);

        // Page<UmsAdmin> page = new Page<>(pageNum,pageSize);
        // QueryWrapper<UmsAdmin> wrapper = new QueryWrapper<>();
        // LambdaQueryWrapper<UmsAdmin> lambda = wrapper.lambda();
        // if(StrUtil.isNotEmpty(keyword)){
        //     lambda.like(UmsAdmin::getUsername,keyword);
        //     lambda.or().like(UmsAdmin::getNickName,keyword);
        // }
        // return page(page,wrapper);

    }
}
