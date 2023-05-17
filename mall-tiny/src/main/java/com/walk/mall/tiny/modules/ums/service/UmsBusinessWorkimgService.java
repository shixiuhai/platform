package com.walk.mall.tiny.modules.ums.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.walk.mall.tiny.modules.ums.model.UmsBusinessWorkimg;

public interface UmsBusinessWorkimgService extends IService<UmsBusinessWorkimg>{
    public Page<UmsBusinessWorkimg> list(Integer workId, Integer page, Integer size, Integer type);
    
}
