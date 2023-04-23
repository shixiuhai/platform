package com.walk.mall.tiny.modules.ums.service;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.walk.mall.tiny.modules.ums.model.UmsBusinessWork;

public interface UmsBusinessWorkService extends IService<UmsBusinessWork>{
    // 查询作品分页和根据主持人名称和作者名称进行作品查询
    Page<UmsBusinessWork> list(String keyword, Integer id, Integer pageSize, Integer pageNum);
    boolean saveWork(UmsBusinessWork umsBusinessWork);
    
}
