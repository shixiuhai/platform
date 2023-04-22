package com.walk.mall.tiny.modules.ums.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.walk.mall.tiny.modules.ums.model.UmsBusinessWorkvideo;

public interface UmsBusinessWorkvideoService extends IService<UmsBusinessWorkvideo>{
    public Page<UmsBusinessWorkvideo> list(Integer workId,Integer page, Integer size);
}
