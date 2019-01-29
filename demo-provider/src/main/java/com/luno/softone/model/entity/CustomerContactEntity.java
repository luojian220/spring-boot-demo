package com.luno.softone.model.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * 实体
 * 表名 customer_contact
 *
 * @author dcs
 * @email 123456@qq.com
 * @date 2018-09-27 20:46:53
 */
public class CustomerContactEntity implements Serializable {
    private static final long serialVersionUID = 1L;

    //
    private Integer ccId;
    //
    private Integer ccCuId;
    //
    private String ccContact;
    //
    private String ccPhone;
    //
    private Date ccAddTime;
    
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
    public void setCcId(Integer ccId) {
        this.ccId = ccId;
    }

    /**
     * 获取：
     */
    public Integer getCcId() {
        return ccId;
    }
    /**
     * 设置：
     */
    public void setCcCuId(Integer ccCuId) {
        this.ccCuId = ccCuId;
    }

    /**
     * 获取：
     */
    public Integer getCcCuId() {
        return ccCuId;
    }
    /**
     * 设置：
     */
    public void setCcContact(String ccContact) {
        this.ccContact = ccContact;
    }

    /**
     * 获取：
     */
    public String getCcContact() {
        return ccContact;
    }
    /**
     * 设置：
     */
    public void setCcPhone(String ccPhone) {
        this.ccPhone = ccPhone;
    }

    /**
     * 获取：
     */
    public String getCcPhone() {
        return ccPhone;
    }
    /**
     * 设置：
     */
    public void setCcAddTime(Date ccAddTime) {
        this.ccAddTime = ccAddTime;
    }

    /**
     * 获取：
     */
    public Date getCcAddTime() {
        return ccAddTime;
    }
}
