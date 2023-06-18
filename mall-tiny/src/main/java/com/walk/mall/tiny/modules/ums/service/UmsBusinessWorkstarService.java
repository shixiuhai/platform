package com.walk.mall.tiny.modules.ums.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.walk.mall.tiny.modules.ums.model.UmsBusinessWorkstar;

public interface UmsBusinessWorkstarService extends IService<UmsBusinessWorkstar>{
    boolean saveStar(UmsBusinessWorkstar umsBusinessWorkstar);
    Page<UmsBusinessWorkstar> list(Integer workId, Integer commentId, Integer anchorId, Integer userId, Integer type,Integer page, Integer size);
    boolean removeStar(UmsBusinessWorkstar umsBusinessWorkstar);
    boolean isStar(Integer workId,Integer commentId,Integer userId, Integer type);
    boolean isCollect(Integer workId,Integer userId, Integer type);
    Long StarNumber(Integer workId,Integer commentId,Integer type);
}
