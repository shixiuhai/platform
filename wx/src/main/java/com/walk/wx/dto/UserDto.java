package com.walk.wx.dto;

import java.security.Timestamp;

import lombok.Data;

 /**
 * 用户表
 *
 * @author zhuhuix
 * @date 2020-04-03
 */
@Data
public class UserDto{
    private Long id;
    private String userName;
    private String password;

    /**
     * 微信openId
     */
    private String openId;

    /**
     * 用户昵称
     */
    private String nickName;

    /**
     * 性别 0-未知 1-male,2-female
     */
    private Integer gender;

    /**
     * 头像地址
     */
    private String avatarUrl;

    private String unionId;

    private String country;

    private String province;

    private String city;

    private String language;

    private String email;

    private String phone;

    private String remarks;

    private Boolean enabled;

    private Timestamp lastPasswordResetTime;

   
    private Timestamp createTime;

  
    private Timestamp updateTime;

}