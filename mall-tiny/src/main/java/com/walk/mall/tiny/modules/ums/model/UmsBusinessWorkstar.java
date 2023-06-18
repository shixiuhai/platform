package com.walk.mall.tiny.modules.ums.model;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import java.io.Serializable;
import lombok.Data;


@Data
@TableName("ums_business_workstar")
public class UmsBusinessWorkstar implements Serializable{
     /**
     * <pre>
     * 
     * </pre>
     */
    private Long	id;

    /**
     * <pre>
     * 作品id name
     * </pre>
     */
    private Long	workId;
    @TableField(exist=false)
    private String workName;

    /**
     * <pre>
     * 作品主持人id name
     * </pre>
     */
    private Long	anchorId;
    @TableField(exist=false)
    private String anchorName;

    /**
     * <pre>
     * 关注作品的用户id name
     * </pre>
     */
    private Long	userId;
    @TableField(exist=false)
    private String userName;

    /**
     * <pre>
     * 作品类型
     * </pre>
     */
    private Integer type;

    // 评论id
    private Integer commentId;
    
}
