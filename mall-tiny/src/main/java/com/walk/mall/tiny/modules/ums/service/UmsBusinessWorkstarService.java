package com.walk.mall.tiny.modules.ums.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.walk.mall.tiny.modules.ums.model.UmsBusinessWorkstar;

public interface UmsBusinessWorkstarService extends IService<UmsBusinessWorkstar>{
    boolean saveStar(UmsBusinessWorkstar umsBusinessWorkstar);
    Page<UmsBusinessWorkstar> list(Integer workId, Integer anchorId, Integer userId, Integer page, Integer size);
}
