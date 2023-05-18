package com.walk.mall.tiny.modules.ums.controller;


import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.walk.mall.tiny.common.api.CommonResult;
import com.walk.mall.tiny.common.service.RedisService;
import com.walk.mall.tiny.modules.ums.model.UmsDictionary;
import com.walk.mall.tiny.modules.ums.service.UmsDictionaryService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.List;


/**
 * @author yizhi
 */
@RestController
@RequestMapping("/dictionary")
public class UmsDictionaryController {

    @Autowired
    private UmsDictionaryService umsDictionaryService;
    @Autowired
    private RedisService redisService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public CommonResult list(@RequestParam(required = false) String type) {
        JSONObject object = new JSONObject();
        object.put("list", umsDictionaryService.findByType(type));
        return CommonResult.success(object, "");
    }


    @RequestMapping(value = "/name", method = RequestMethod.GET)
    public CommonResult listName() {
        return CommonResult.success(umsDictionaryService.findNames(),"");
    }

    @RequestMapping(value = "/tree", method = RequestMethod.GET)
    public CommonResult tree() {
        JSONObject object = new JSONObject();
        object.put("bean", umsDictionaryService.getTree().getChildren());
        return CommonResult.success(object, null);
    }

    @RequestMapping(value = "/", method = RequestMethod.POST)
    public CommonResult save(@RequestParam(required = false) String json) {
        UmsDictionary UmsDictionary = JSON.parseObject(json, UmsDictionary.class);
        if (UmsDictionary.getPkId() != null) {
            UmsDictionary UmsDictionary1 = umsDictionaryService.findById(UmsDictionary.getDicKey(), UmsDictionary.getDicName());
            if (UmsDictionary1 != null && !UmsDictionary1.getPkId().equals(UmsDictionary.getPkId())) {
                return CommonResult.success("数据记录重复");
            }
        } else {
            UmsDictionary UmsDictionary1 = umsDictionaryService.findById(UmsDictionary.getDicKey(), UmsDictionary.getDicName());
            if (UmsDictionary1 != null) {
                return CommonResult.success("数据记录重复");
            }
        }
        if (StringUtils.isBlank(UmsDictionary.getState())) {
            UmsDictionary.setState("A");
        }
        UmsDictionary.setStateTime(new Date());
        umsDictionaryService.insert(UmsDictionary);
        //清理redis缓存
        redisService.del(UmsDictionary.getDicKey());
        redisService.del(UmsDictionary.getDicKey()+UmsDictionary.getDicName());
        return CommonResult.success("");
    }

    @RequestMapping(value = "/", method = RequestMethod.DELETE)
    public CommonResult delete(@RequestParam(required = false) int id,
                    @RequestParam(required = false) String type) {
        umsDictionaryService.delete(id, type);
        return CommonResult.success("", type);
    }

    @GetMapping(value = "/subType")
    public CommonResult listWithChildren(@RequestParam(required = false) String type) {
        JSONObject object = new JSONObject();
        List<UmsDictionary> UmsDictionary = umsDictionaryService.findByType(type);
        for (UmsDictionary UmsDictionary1 : UmsDictionary) {
            UmsDictionary1.setChildren(umsDictionaryService.findByParentId(UmsDictionary1.getPkId()));
        }
        object.put("list", UmsDictionary);
        return CommonResult.success(object, "");
    }

    @GetMapping(value = "/find")
    public CommonResult listByTypeAndParentId(@RequestParam(required = false) String type,
                                   @RequestParam(required = false) Integer parentId) {
        JSONObject object = new JSONObject();
        object.put("list", umsDictionaryService.findByTypeAndParentId(type, parentId));
        return CommonResult.success(object, "");
    }
}
