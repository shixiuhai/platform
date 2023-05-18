package com.walk.mall.tiny.modules.ums.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.walk.mall.tiny.common.service.RedisService;
import com.walk.mall.tiny.modules.ums.mapper.UmsDictionaryMapper;
import com.walk.mall.tiny.modules.ums.model.UmsDictionary;
import com.walk.mall.tiny.modules.ums.service.UmsDictionaryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.cache.annotation.Caching;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;


/**
 * @author lclc
 */
@Service
public class UmsDictionaryServiceImpl extends ServiceImpl<UmsDictionaryMapper, UmsDictionary> implements UmsDictionaryService {

    @Autowired
    private RedisService redisService;

    @Override
    public UmsDictionary findById(String id, String name) {
        return baseMapper.findUmsDictionaryByDicKeyAndDicNameAndState(id, name, "A");
    }

    @Override
    @Caching(evict = {
            @CacheEvict(value="REST-getTree-dict-type",key = "#UmsDictionary.dicName",beforeInvocation=true),
            @CacheEvict(value="REST-getTree-dict",key = "'tree-dict'", beforeInvocation=true) })
    public int insert(UmsDictionary UmsDictionary) {
        if (UmsDictionary.getPkId() == null) {
            UmsDictionary.setState("A");
            UmsDictionary.setStateTime(new Date());
        } return baseMapper.insert(UmsDictionary);

    }

    @Override
    @Caching(evict = {
            @CacheEvict(value="REST-getTree-dict-type",key = "#type",beforeInvocation=true),
            @CacheEvict(value = "REST-getTree-dict-type", key = "'tree-dict'", beforeInvocation=true) })
    public void delete(int id,String type) {
        UmsDictionary UmsDictionary = baseMapper.selectById(id);
        if(UmsDictionary!=null){
            //清理redis缓存
            redisService.del(UmsDictionary.getDicKey());
            redisService.del(UmsDictionary.getDicKey()+UmsDictionary.getDicName());
            baseMapper.deleteById(UmsDictionary.getPkId());
        }
    }

    @Cacheable(value = "REST-getTree-dict-type", key = "#type")
    @Override
    public List<UmsDictionary> findByType(String type) {
        return baseMapper.findUmsDictionaryByDicNameAndState(type, "A");
    }

    @Override
    public List<UmsDictionary> findByTypeAndParentId(String type,Integer parentId) {
        return baseMapper.findUmsDictionaryByDicNameAndParentId(type,parentId, "A");
    }

    @Override
    public List<String> findNames() {
        return baseMapper.findName();
    }

    @Override
    @Cacheable(value="REST-getTree-dict",key = "'tree-dict'")
    public UmsDictionary getTree() {
        List<UmsDictionary> list = baseMapper.findByState("A");

        if (list.size() > 0) {
            for (UmsDictionary o : list) {
                if (o.getDicParentId() != null && o.getDicParentId() != 0) {
                    UmsDictionary UmsDictionary1 = baseMapper.selectById(o.getDicParentId());
                    o.setParent(UmsDictionary1);
                }
            }
        }

        List<UmsDictionary> arrList = new ArrayList<>(list);
        List<UmsDictionary> rootList = makeTree(arrList);
        return rootList.get(0);
    }

    private List<UmsDictionary> makeTree(List<UmsDictionary> list) {
        List<UmsDictionary> parent = new ArrayList<>();
        for (UmsDictionary e : list) {
            if (e.getParent() == null) {
                e.setChildren(new ArrayList<>(0));
                parent.add(e);
            }
        }
        list.removeAll(parent);

        makeChildren(parent, list);

        return parent;
    }

    private void makeChildren(List<UmsDictionary> parent, List<UmsDictionary> children) {
        if (children.isEmpty()) {
            return;
        }
        List<UmsDictionary> tmp = new ArrayList<>();
        for (UmsDictionary c1 : parent) {
            for (UmsDictionary c2 : children) {
                c2.setChildren(new ArrayList<>(0));
                if (c1.getPkId().equals(c2.getParent().getPkId())) {
                    c1.getChildren().add(c2);
                    tmp.add(c2);
                }
            }
        }
        children.removeAll(tmp);
        makeChildren(tmp, children);
    }

    @Override
    public List<UmsDictionary> findByParentId(Integer parentId) {
        return   baseMapper.findByDicParentIdAndState(parentId, "A");
    }

    @Override
    public String getValueByNameAndKey(String name, String key) {
        return baseMapper.getValueByNameAndKey(name,key);
    }

    @Override
    public List<UmsDictionary> findByName(String name) {
        return baseMapper.getByName(name);
    }

}
