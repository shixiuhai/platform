package com.walk.mall.tiny.modules.ums.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.walk.mall.tiny.modules.ums.model.UmsBusinessWorkcomment;

public interface UmsBusinessWorkcommentService extends IService<UmsBusinessWorkcomment>{
    Page<UmsBusinessWorkcomment> list(Integer workId, Integer anchorId, Integer userId,Integer page, Integer size);
    
}
