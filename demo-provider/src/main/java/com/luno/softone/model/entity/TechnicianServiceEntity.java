package com.luno.softone.model.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * 服务咨询记录表实体
 * 表名 technician_service
 *
 * @author dcs
 * @email 123456@qq.com
 * @date 2018-10-20 15:50:32
 */
public class TechnicianServiceEntity implements Serializable {
    private static final long serialVersionUID = 1L;

    //
    private Integer id;
    //客户id
    private Integer tsCuId;
    //员工id
    private String tsEmpId;
    //类型
    private String tsTechnicianType;
    //咨询内容
    private String tsContent;
    //解决方案
    private String tsSolution;
    //解决时间
    private Date tsTime;
    //创建时间
    private Date tsAddTime;

    /**
     * 设置：
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取：
     */
    public Integer getId() {
        return id;
    }
    /**
     * 设置：客户id
     */
    public void setTsCuId(Integer tsCuId) {
        this.tsCuId = tsCuId;
    }

    /**
     * 获取：客户id
     */
    public Integer getTsCuId() {
        return tsCuId;
    }
    /**
     * 设置：员工id
     */
    public void setTsEmpId(String tsEmpId) {
        this.tsEmpId = tsEmpId;
    }

    /**
     * 获取：员工id
     */
    public String getTsEmpId() {
        return tsEmpId;
    }
    /**
     * 设置：类型
     */
    public void setTsTechnicianType(String tsTechnicianType) {
        this.tsTechnicianType = tsTechnicianType;
    }

    /**
     * 获取：类型
     */
    public String getTsTechnicianType() {
        return tsTechnicianType;
    }
    /**
     * 设置：咨询内容
     */
    public void setTsContent(String tsContent) {
        this.tsContent = tsContent;
    }

    /**
     * 获取：咨询内容
     */
    public String getTsContent() {
        return tsContent;
    }
    /**
     * 设置：解决方案
     */
    public void setTsSolution(String tsSolution) {
        this.tsSolution = tsSolution;
    }

    /**
     * 获取：解决方案
     */
    public String getTsSolution() {
        return tsSolution;
    }
    /**
     * 设置：解决时间
     */
    public void setTsTime(Date tsTime) {
        this.tsTime = tsTime;
    }

    /**
     * 获取：解决时间
     */
    public Date getTsTime() {
        return tsTime;
    }
    /**
     * 设置：创建时间
     */
    public void setTsAddTime(Date tsAddTime) {
        this.tsAddTime = tsAddTime;
    }

    /**
     * 获取：创建时间
     */
    public Date getTsAddTime() {
        return tsAddTime;
    }
}
