package com.walk.mall.tiny.modules.ums.model;



import java.io.Serializable;

import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;

import lombok.Data;

/**
 * <pre>
 *  
 * </pre>
 * @author toolscat.com
 * @verison $Id: UmsBusinessCompany v 0.1 2023-04-16 09:33:23
 */
@Data
@TableName("ums_business_company")
public class UmsBusinessCompany implements Serializable{

    /**
     * <pre>
     * 
     * </pre>
     */
    @TableId(type=IdType.AUTO)
    private Long	id;

    /**
     * <pre>
     * 公司或团队logo
     * </pre>
     */
    private String	logo;

    /**
     * <pre>
     * 公司或者团队名称
     * </pre>
     */
    private String	name;

    /**
     * <pre>
     * 公司或团队地址
     * </pre>
     */
    private String	area;

    /**
     * <pre>
     * 公司或者团队补充描述
     * </pre>
     */
    private String	description;

    /**
     * <pre>
     * 公司或团队联系电话
     * </pre>
     */
    private String	phone;

    /**
     * <pre>
     * 公司或者团队微信号码
     * </pre>
     */
    private String	wechatNumber;

    // 公司图片
    private String imgUrl;

    // 公司视频
    private String videoUrl;




}