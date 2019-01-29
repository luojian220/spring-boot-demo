package com.luno.softone.model.dto;



import com.luno.softone.model.entity.CaseDispatchEntity;

import java.util.List;

public class CaseDispatchDto extends CaseDispatchEntity {

    /**
     * 负责人 列表
     */
    private List<String> charges;

    private String caseStatus ;

    //负责人- 员工empid  + 姓名
    private List<EmpInfoDto> chargeInfoList;


    public List<String> getCharges() {
        return charges;
    }

    public void setCharges(List<String> charges) {
        this.charges = charges;
    }

    public String getCaseStatus() {
        return caseStatus;
    }

    public void setCaseStatus(String caseStatus) {
        this.caseStatus = caseStatus;
    }

    public List<EmpInfoDto> getChargeInfoList() {
        return chargeInfoList;
    }

    public void setChargeInfoList(List<EmpInfoDto> chargeInfoList) {
        this.chargeInfoList = chargeInfoList;
    }
}
