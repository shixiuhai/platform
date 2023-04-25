package com.walk.mall.tiny.modules.ums.enumeration;

import lombok.AllArgsConstructor;

import java.awt.*;
import java.util.Arrays;
import java.util.stream.Collectors;

/**
 * @author lijiang
 * @date 2021-05-18
 */
@AllArgsConstructor
public enum MonitoringType {
    SMOKE(1,"smoke","吸烟检测",Color.red),
    TRUCK(2,"truck","文保单位异常检测",Color.yellow),
    TRAFFIC(3,"person","出入口人员检测",Color.green),
    PERSON(4,"noMask","未戴口罩检测",Color.orange),
    FACE(5,"face","人脸检测",Color.magenta),
    LIGHT(6,"traffic light","信号灯检测",Color.magenta),
    ACTIVITY(12,"activity","场所活跃度检测",Color.blue);

    public Integer type;
    private String name;
    private String msg;
    private Color color;

    public static String getName(Integer type) {
        for (MonitoringType monitoringType : MonitoringType.values()) {
            if (monitoringType.type.equals(type)) {
                return monitoringType.name;
            }
        }
        return null;
    }

    public static Color getColor(String name) {
        for (MonitoringType monitoringType : MonitoringType.values()) {
            if (monitoringType.name.equals(name)) {
                return monitoringType.color;
            }
        }
        return null;
    }

    public static Integer getType(String name) {
        for (MonitoringType monitoringType : MonitoringType.values()) {
            if (monitoringType.name.equals(name)) {
                return monitoringType.type;
            }
        }
        return null;
    }

    public static String getMsg(Integer type) {
        for (MonitoringType monitoringType : MonitoringType.values()) {
            if (monitoringType.type.equals(type)) {
                return monitoringType.msg;
            }
        }
        return null;
    }

    public static java.util.List<String> getNameList(){
        return Arrays.asList(MonitoringType.values()).stream().map(monitoringType -> monitoringType.name).collect(Collectors.toList());
    }
}
