package com.luno.softone.model.entity;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

/**
 * 签到表实体
 * 表名 sys_sign
 *
 * @author dcs
 * @email 123456@qq.com
 * @date 2018-11-11 12:49:16
 */
public class SysSignEntity implements Serializable {
    private static final long serialVersionUID = 1L;

    //主键ID
    private Integer id;
    //姓名
    private String name;
    //员工编号
    private String staffId;
    //类型 sign in 签到，sign 签退
    private String type;
    //考勤时间
    private Date signTime;
    //考勤地点
    private String address;
    //考勤半径
    private Integer radius;
    //关联案件编号
    private String ncNumber;
    //案件(要求)考勤时间
    private String caseTime;
    //签到经度
    private BigDecimal longitude;
    //签到纬度
    private BigDecimal latitude;
    // biz_type 签到类型 1 考勤签到   2 案件签到
    private Integer bizType;

    //客户名称
    private String ncCuName;
    //客户地址
    private String ncAddress;
    //任务时间
    private Date cdTaskTime;
    
    
    
    public String getNcCuName() {
		return ncCuName;
	}

	public void setNcCuName(String ncCuName) {
		this.ncCuName = ncCuName;
	}

	public String getNcAddress() {
		return ncAddress;
	}

	public void setNcAddress(String ncAddress) {
		this.ncAddress = ncAddress;
	}

	public Date getCdTaskTime() {
		return cdTaskTime;
	}

	public void setCdTaskTime(Date cdTaskTime) {
		this.cdTaskTime = cdTaskTime;
	}

	/**
     * 设置：主键ID
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取：主键ID
     */
    public Integer getId() {
        return id;
    }
    /**
     * 设置：姓名
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 获取：姓名
     */
    public String getName() {
        return name;
    }
    /**
     * 设置：员工编号
     */
    public void setStaffId(String staffId) {
        this.staffId = staffId;
    }

    /**
     * 获取：员工编号
     */
    public String getStaffId() {
        return staffId;
    }
    /**
     * 设置：类型 sign in 签到，sign 签退
     */
    public void setType(String type) {
        this.type = type;
    }

    /**
     * 获取：类型 sign in 签到，sign 签退
     */
    public String getType() {
        return type;
    }
    /**
     * 设置：考勤时间
     */
    public void setSignTime(Date signTime) {
        this.signTime = signTime;
    }

    /**
     * 获取：考勤时间
     */
    public Date getSignTime() {
        return signTime;
    }
    /**
     * 设置：考勤地点
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * 获取：考勤地点
     */
    public String getAddress() {
        return address;
    }
    /**
     * 设置：考勤半径
     */
    public void setRadius(Integer radius) {
        this.radius = radius;
    }

    /**
     * 获取：考勤半径
     */
    public Integer getRadius() {
        return radius;
    }
    /**
     * 设置：关联案件编号
     */
    public void setNcNumber(String ncNumber) {
        this.ncNumber = ncNumber;
    }

    /**
     * 获取：关联案件编号
     */
    public String getNcNumber() {
        return ncNumber;
    }
    /**
     * 设置：案件(要求)考勤时间
     */
    public void setCaseTime(String caseTime) {
        this.caseTime = caseTime;
    }

    /**
     * 获取：案件(要求)考勤时间
     */
    public String getCaseTime() {
        return caseTime;
    }
    /**
     * 设置：签到经度
     */
    public void setLongitude(BigDecimal longitude) {
        this.longitude = longitude;
    }

    /**
     * 获取：签到经度
     */
    public BigDecimal getLongitude() {
        return longitude;
    }
    /**
     * 设置：签到纬度
     */
    public void setLatitude(BigDecimal latitude) {
        this.latitude = latitude;
    }

    /**
     * 获取：签到纬度
     */
    public BigDecimal getLatitude() {
        return latitude;
    }

    public Integer getBizType() {
        return bizType;
    }

    public void setBizType(Integer bizType) {
        this.bizType = bizType;
    }
}
