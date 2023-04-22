package com.walk.mall.tiny.modules.ums.model;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import java.util.Date;
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




}