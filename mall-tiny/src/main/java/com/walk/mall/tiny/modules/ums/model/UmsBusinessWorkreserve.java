package com.walk.mall.tiny.modules.ums.model;


import java.io.Serializable;
import java.util.Date;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;
@Data
@TableName("ums_business_workreserve")
public class UmsBusinessWorkreserve implements Serializable{

    /**
     * <pre>
     * 
     * </pre>
     */
    private Long	id;

    /**
     * <pre>
     * 预约服务
     * </pre>
     */
    private String	appointmentService;

    /**
     * <pre>
     * 预约服务时间
     * </pre>
     */
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date	createdTime;

    /**
     * <pre>
     * 联系人
     * </pre>
     */
    private String	contactPerson;

    /**
     * <pre>
     * 
     * </pre>
     */
    private String	phone;

    /**
     * <pre>
     * 
     * </pre>
     */
    private String	remark;

    private int status;




}