package com.walk.mall.tiny.modules.ums.model;
import java.io.Serializable;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import java.util.Date;
import lombok.Data;
@Data
@TableName("ums_business_anchor_detail")
public class UmsBusinessAnchorDetail implements Serializable{

    /**
     * <pre>
     * 
     * </pre>
     */
    @TableId(type=IdType.AUTO)
    private Long	id;

    /**
     * <pre>
     * 主持人id
     * </pre>
     */
    private Long	anchorId;

    /**
     * <pre>
     * 主持人真实姓名
     * </pre>
     */
    private String	anchorName;

    /**
     * <pre>
     * 主持人身高
     * </pre>
     */
    private String	anchorHeight;

    /**
     * <pre>
     * 主持人体重
     * </pre>
     */
    private String	anchorWeight;

    /**
     * <pre>
     * 主持人星座
     * </pre>
     */
    private String	anchorConstellation;

    /**
     * <pre>
     * 入行时间
     * </pre>
     */
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date	entryTime;

    /**
     * <pre>
     * 主持人风格
     * </pre>
     */
    private String	anchorStytle;



}