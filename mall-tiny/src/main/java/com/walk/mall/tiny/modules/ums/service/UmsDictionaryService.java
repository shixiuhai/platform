package com.walk.mall.tiny.modules.ums.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.walk.mall.tiny.modules.ums.model.UmsDictionary;

import java.util.List;

public interface UmsDictionaryService extends IService<UmsDictionary> {

    UmsDictionary findById(String id, String name);


    List<UmsDictionary> findByType(String type);

    List<UmsDictionary> findByTypeAndParentId(String type,Integer parentId);

    List<String> findNames();
    UmsDictionary getTree();
    int insert(UmsDictionary UmsDictionary);
    void delete(int id, String type);
    List<UmsDictionary> findByParentId(Integer parentId);
    String getValueByNameAndKey(String name, String key);

    List<UmsDictionary> findByName(String name);
}
