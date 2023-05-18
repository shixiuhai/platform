package com.walk.mall.tiny.modules.ums.model;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;
import org.springframework.data.annotation.Id;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * @author yizhi
 */
@Data
@TableName("ums_business_dictionary")
public class UmsDictionary implements Serializable {
    private static final long serialVersionUID = -1081755380606155050L;

    @Id
    @TableId(type= IdType.AUTO)
    private Integer pkId;
    private Integer dicId;
    private String dicName;
    private String dicCode;
    private Integer dicParentId;
    private String dicKey;
    private String dicValue;
    private String state;
    @TableField(exist = false)
    private String type;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    @JsonFormat(pattern="yyyy-MM-dd")
    private Date stateTime;
    @TableField(exist = false)
    private Integer dicRowNum;//序号
    @TableField(exist = false)
    private List<UmsDictionary> children;//子集
    @TableField(exist = false)
    @JsonIgnore
    private UmsDictionary parent;//父集
}
