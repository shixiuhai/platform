package com.walk.mall.tiny.modules.ums.enumeration;

import lombok.AllArgsConstructor;

import java.awt.*;
import java.util.Arrays;
import java.util.stream.Collectors;
@AllArgsConstructor
public enum StarType {
    zuoping(1,"婚纱摄影作品点赞"),
    dongtai(2,"动态说说点赞"),
    zuopingpinglun(3,"作品评论点赞"),
    dongtaipinglun(4,"动态评论点赞"),
    zuopingsouchang(5,"婚礼作品收藏"),
    dongtaisouchang(6,"动态收藏");
    private Integer type;
    private String name;
    public static String getName(Integer type) {
        for (StarType starType : StarType.values()) {
            if (starType.type.equals(type)) {
                return starType.name;
            }
        }
        return null;
    }

    public static Integer getType(String name) {
        for (StarType starType : StarType.values()) {
            if (starType.name.equals(name)) {
                return starType.type;
            }
        }
        return null;
    }

    
    
}
