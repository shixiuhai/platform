package com.walk.mall.tiny.modules.ums.service;



import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.walk.mall.tiny.modules.ums.model.UmsBusinessAnchorDetail;

public interface UmsBusinessAnchorDetailService extends IService<UmsBusinessAnchorDetail>{
    boolean saveUserDetail(UmsBusinessAnchorDetail umsBusinessAnchorDetail);
    Page<UmsBusinessAnchorDetail> list(Integer id, Integer page, Integer size);
    UmsBusinessAnchorDetail listUserDay();

}
