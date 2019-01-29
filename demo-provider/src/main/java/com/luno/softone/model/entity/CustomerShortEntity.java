package com.luno.softone.model.entity;

import java.io.Serializable;

/**
 * 实体
 * 表名 CustomerShortEntity
 *
 * @author dcs
 * @email 123456@qq.com
 * @date 2018-09-27 20:46:53
 */
public class CustomerShortEntity implements Serializable {
    private static final long serialVersionUID = 1L;

    //
    private Integer cuId;
    //客户编号
    private String cuNumber;
    //客户名称
    private String cuName;
    //客户简称
    private String cuSimpleName;
    //拼音名称
    private String cuPyName;
    //拼音简称
    private String cuSimplePyName;
	public Integer getCuId() {
		return cuId;
	}
	public void setCuId(Integer cuId) {
		this.cuId = cuId;
	}
	public String getCuNumber() {
		return cuNumber;
	}
	public void setCuNumber(String cuNumber) {
		this.cuNumber = cuNumber;
	}
	public String getCuName() {
		return cuName;
	}
	public void setCuName(String cuName) {
		this.cuName = cuName;
	}
	public String getCuSimpleName() {
		return cuSimpleName;
	}
	public void setCuSimpleName(String cuSimpleName) {
		this.cuSimpleName = cuSimpleName;
	}
	public String getCuPyName() {
		return cuPyName;
	}
	public void setCuPyName(String cuPyName) {
		this.cuPyName = cuPyName;
	}
	public String getCuSimplePyName() {
		return cuSimplePyName;
	}
	public void setCuSimplePyName(String cuSimplePyName) {
		this.cuSimplePyName = cuSimplePyName;
	}

}
