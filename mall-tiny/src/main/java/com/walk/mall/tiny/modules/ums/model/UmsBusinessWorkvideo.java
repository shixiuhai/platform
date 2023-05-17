package com.walk.mall.tiny.modules.ums.model;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import java.io.Serializable;
import lombok.Data;
@Data
@TableName("ums_business_workvideo")
public class UmsBusinessWorkvideo implements Serializable{

    /**
     * <pre>
     * 作品视频id
     * </pre>
     */
    @TableId(type=IdType.AUTO)
    private Integer	id;

    /**
     * <pre>
     * 作品id
     * </pre>
     */
    private Integer	workId;

    /**
     * <pre>
     * 作品视频url
     * </pre>
     */
    private String	videoUrl;

    /**
     * <pre>
     * 作品类型
     * </pre>
     */
    private String type;




}
