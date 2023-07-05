package com.walk.mall.tiny.modules.ums.model;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import java.util.Date;
import lombok.Data;
/**
 * <pre>
 *  作品表
 * </pre>
 * @author toolscat.com
 * @verison $Id: UmsBusinessWork v 0.1 2023-04-16 12:17:08
 */
@Data
@TableName("ums_business_work")
public class UmsBusinessWork implements Serializable{

    /**
     * <pre>
     * 作品
     * </pre>
     */
    @TableId(type=IdType.AUTO)
    private Long	id;

    /**
     * <pre>
     * 主持人id
     * </pre>
     */
    private Long	authorId;

    /**
     * <pre>
     * 主持人名字
     * </pre>
     */
    private String	anthorName;

    /**
     * <pre>
     * 作品封面图片地址
     * </pre>
     */
    private String	coverUrl;

    /**
     * <pre>
     * 作品标题
     * </pre>
     */
    private String	title;

    /**
     * <pre>
     * 作品地点
     * </pre>
     */
    private String	area;

    /**
     * <pre>
     * 作品查看数量
     * </pre>
     */
    private Integer	viewNumber;

    /**
     * <pre>
     * 作品创建时间
     * </pre>
     */
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date    createdTime;


    /**
     * <pre>
     * 类型
     * </pre>
     */
    private int type;

    /**
     * <pre>
     * 内容
     * </pre>
     */
    private String content;

    private String imgUrl;

    private String videoUrl;

    // 当前用户是否点赞该作品
    @TableField(exist=false)
    private boolean isStar;
    
    // 当前作品的点赞量
    @TableField(exist=false)
    private Long StarNumber;
    
    // 当前用户是否收藏该作品
    @TableField(exist=false)
    private boolean isCollect;

    @TableField(exist=false)
    private String icon;

    // 排序id
    private Long sortId;

}