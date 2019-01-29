package com.luno.softone.model.dto;

import java.io.Serializable;
import java.util.List;

public class MsgSheduleDto implements Serializable {
    private static final long serialVersionUID = 1L;
    //案件id
    private Integer cmrNcId;
    //客户id
    private Integer cuId;
    // 类型  1 调度.  2 调度退回 3 . 删除   4 .完成   5.取消调度
    // 6.客户撤案. 7.注销  8. 再次上报  9.转单并完成
    private Integer cmrType;
    //接收人员列表
    List<String> staffList;
    //客户名称
    private String cuName;
    //备注
    private String cmrRemark;
    //案件变动id
    private Integer cmrId;
    //案件编号
    private String ncNumber;
    //客户简称
    private String cuSimpleName;

    //消息内容
    private String content;
    
    
    public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getCuSimpleName() {
        return cuSimpleName;
    }

    public void setCuSimpleName(String cuSimpleName) {
        this.cuSimpleName = cuSimpleName;
    }

    public String getNcNumber() {
        return ncNumber;
    }

    public void setNcNumber(String ncNumber) {
        this.ncNumber = ncNumber;
    }

    public Integer getCmrNcId() {
        return cmrNcId;
    }

    public void setCmrNcId(Integer cmrNcId) {
        this.cmrNcId = cmrNcId;
    }

    public Integer getCuId() {
        return cuId;
    }

    public void setCuId(Integer cuId) {
        this.cuId = cuId;
    }

    public Integer getCmrType() {
        return cmrType;
    }

    public void setCmrType(Integer cmrType) {
        this.cmrType = cmrType;
    }

    public List<String> getStaffList() {
        return staffList;
    }

    public void setStaffList(List<String> staffList) {
        this.staffList = staffList;
    }

    public String getCuName() {
        return cuName;
    }

    public void setCuName(String cuName) {
        this.cuName = cuName;
    }

    public String getCmrRemark() {
        return cmrRemark;
    }

    public void setCmrRemark(String cmrRemark) {
        this.cmrRemark = cmrRemark;
    }

    public Integer getCmrId() {
        return cmrId;
    }

    public void setCmrId(Integer cmrId) {
        this.cmrId = cmrId;
    }
}
