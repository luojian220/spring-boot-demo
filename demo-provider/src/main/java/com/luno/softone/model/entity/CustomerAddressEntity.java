package com.luno.softone.model.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * 实体
 * 表名 customer_address
 *
 * @author dcs
 * @email 123456@qq.com
 * @date 2018-09-27 20:46:53
 */
public class CustomerAddressEntity implements Serializable {
    private static final long serialVersionUID = 1L;

    //
    private Integer caId;
    //
    private Integer caCuId;
    //
    private String caAddress;
    //
    private Date caAddTime;
    //
    private String caMap;
    //
    private String caMapDescription;

    private Integer flag=0;
    
    
    public Integer getFlag() {
    	
		return flag;
	}

	public void setFlag(Integer flag) {
		this.flag = flag;
	}

	/**
     * 设置：
     */
    public void setCaId(Integer caId) {
        this.caId = caId;
    }

    /**
     * 获取：
     */
    public Integer getCaId() {
        return caId;
    }
    /**
     * 设置：
     */
    public void setCaCuId(Integer caCuId) {
        this.caCuId = caCuId;
    }

    /**
     * 获取：
     */
    public Integer getCaCuId() {
        return caCuId;
    }
    /**
     * 设置：
     */
    public void setCaAddress(String caAddress) {
        this.caAddress = caAddress;
    }

    /**
     * 获取：
     */
    public String getCaAddress() {
        return caAddress;
    }
    /**
     * 设置：
     */
    public void setCaAddTime(Date caAddTime) {
        this.caAddTime = caAddTime;
    }

    /**
     * 获取：
     */
    public Date getCaAddTime() {
        return caAddTime;
    }
    /**
     * 设置：
     */
    public void setCaMap(String caMap) {
        this.caMap = caMap;
    }

    /**
     * 获取：
     */
    public String getCaMap() {
        return caMap;
    }
    /**
     * 设置：
     */
    public void setCaMapDescription(String caMapDescription) {
        this.caMapDescription = caMapDescription;
    }

    /**
     * 获取：
     */
    public String getCaMapDescription() {
        return caMapDescription;
    }
}
