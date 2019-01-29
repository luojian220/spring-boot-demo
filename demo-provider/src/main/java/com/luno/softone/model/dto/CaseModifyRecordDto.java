package com.luno.softone.model.dto;

import com.luno.softone.model.entity.CaseModifyRecordEntity;


public class CaseModifyRecordDto extends CaseModifyRecordEntity {

    //引用ID  暂时指调度id
    private Integer refId;

    //操作人
    private String operatorName;
    //调度人
    private String dispatchName;

    //技术负责人
    private String technicalName;

    private String cmrTypeName;

    private String createTimeStr;

    public Integer getRefId() {
        return refId;
    }

    public void setRefId(Integer refId) {
        this.refId = refId;
    }

    public String getOperatorName() {
        return operatorName;
    }

    public void setOperatorName(String operatorName) {
        this.operatorName = operatorName;
    }

    public String getDispatchName() {
        return dispatchName;
    }

    public void setDispatchName(String dispatchName) {
        this.dispatchName = dispatchName;
    }

    public String getTechnicalName() {
        return technicalName;
    }

    public void setTechnicalName(String technicalName) {
        this.technicalName = technicalName;
    }

    public String getCmrTypeName() {
        return cmrTypeName;
    }

    public void setCmrTypeName(String cmrTypeName) {
        this.cmrTypeName = cmrTypeName;
    }

    public String getCreateTimeStr() {
        return createTimeStr;
    }

    public void setCreateTimeStr(String createTimeStr) {
        this.createTimeStr = createTimeStr;
    }
}
