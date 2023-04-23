package com.walk.mall.tiny.modules.ums.model;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
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
     * 作品id
     * </pre>
     */
    private Long	workId;

    /**
     * <pre>
     * 作品主持人id
     * </pre>
     */
    private Long	anchorId;

    /**
     * <pre>
     * 关注作品的用户id
     * </pre>
     */
    private Long	userId;
    
}
