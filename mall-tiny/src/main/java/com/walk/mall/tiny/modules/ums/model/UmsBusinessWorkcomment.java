package com.walk.mall.tiny.modules.ums.model;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import java.util.Date;
import java.util.List;

import lombok.Data;
@Data
@TableName("ums_business_workcomment")
public class UmsBusinessWorkcomment implements Serializable{

    /**
     * <pre>
     * 评论id
     * </pre>
     */
    @TableId(type=IdType.AUTO)
    private Long	id;

    // 父级评论id
    private Long parentId;

    /**
     * <pre>
     * 作品id
     * </pre>
     */
    private Long	workId;

    /**
     * <pre>
     * 主持人id
     * </pre>
     */
    private Long	anchorId;

    /**
     * <pre>
     * 主持人名称
     * </pre>
     */
    private String	anchorName;

    /**
     * <pre>
     * 用户id
     * </pre>
     */
    private Long	userId;

    /**
     * <pre>
     * 用户名称
     * </pre>
     */
    private String	userName;

    /**
     * <pre>
     * 用户评论
     * </pre>
     */
    private String	userComment;

    /**
     * <pre>
     * 作品类型
     * </pre>
     */
    private Integer type;

    // 发表评论时间
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date    createdTime;

    // 发表评论人的头像
    @TableField(exist=false)
    private String icon;

    @TableField(exist=false)
    private List<UmsBusinessWorkcomment> children;

    // 当前用户是否点赞该作品
    @TableField(exist=false)
    private boolean isStar;
    // 当前作品的点赞量
    @TableField(exist=false)
    private Long StarNumber;


    



}