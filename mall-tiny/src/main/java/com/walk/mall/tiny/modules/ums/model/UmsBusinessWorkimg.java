package com.walk.mall.tiny.modules.ums.model;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import java.io.Serializable;
import lombok.Data;

/**
 * <pre>
 *  
 * </pre>
 * @author toolscat.com
 * @verison $Id: UmsBusinessWorkimg v 0.1 2023-04-18 18:32:53
 */
@Data
@TableName("ums_business_workimg")
public class UmsBusinessWorkimg  implements Serializable{

    /**
     * <pre>
     * 作品图片主键
     * </pre>
     */
    @TableId(type = IdType.AUTO)
    private Integer	id;

    /**
     * <pre>
     * 作品id
     * </pre>
     */
    private Integer	workId;

    /**
     * <pre>
     * 作品图片
     * </pre>
     */
    private String	imgUrl;




}