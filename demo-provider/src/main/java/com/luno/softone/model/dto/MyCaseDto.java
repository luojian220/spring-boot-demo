package com.luno.softone.model.dto;

import com.luno.softone.model.entity.NewCaseEntity;

import java.util.Date;

public class MyCaseDto extends NewCaseEntity {

    //调度时间
    private Date cdTime;
    //调度人 cd_dispatch_emp_id
    private String cdDispatchEmpId;
    //调度人 cd_dispatch_name cdDispatchName
    private String cdDispatchName;
    //负责人 cd_technical_emp_id cdTechnicalEmpId
    private String cdTechnicalEmpId;
    //负责人姓名
    private String cdTechnicalName;
    //协助人
    private String cdAidance;
    //任务时间
    private Date cdTaskTime;
    //建议
    private String cdSuggestion;
    //调度状态
    private String cdDispatchState;
    // 是否多人任务  0 正常     1 多人任务
    private Integer cdMultiTask;

    // 案件对应 调度ID
    private Integer caseDispatchId;

    public Date getCdTime() {
        return cdTime;
    }

    public void setCdTime(Date cdTime) {
        this.cdTime = cdTime;
    }

    public String getCdDispatchEmpId() {
        return cdDispatchEmpId;
    }

    public void setCdDispatchEmpId(String cdDispatchEmpId) {
        this.cdDispatchEmpId = cdDispatchEmpId;
    }

    public String getCdDispatchName() {
        return cdDispatchName;
    }

    public void setCdDispatchName(String cdDispatchName) {
        this.cdDispatchName = cdDispatchName;
    }

    public String getCdTechnicalEmpId() {
        return cdTechnicalEmpId;
    }

    public void setCdTechnicalEmpId(String cdTechnicalEmpId) {
        this.cdTechnicalEmpId = cdTechnicalEmpId;
    }

    public String getCdAidance() {
        return cdAidance;
    }

    public void setCdAidance(String cdAidance) {
        this.cdAidance = cdAidance;
    }

    public Date getCdTaskTime() {
        return cdTaskTime;
    }

    public void setCdTaskTime(Date cdTaskTime) {
        this.cdTaskTime = cdTaskTime;
    }

    public String getCdSuggestion() {
        return cdSuggestion;
    }

    public void setCdSuggestion(String cdSuggestion) {
        this.cdSuggestion = cdSuggestion;
    }

    public String getCdDispatchState() {
        return cdDispatchState;
    }

    public void setCdDispatchState(String cdDispatchState) {
        this.cdDispatchState = cdDispatchState;
    }

    public Integer getCdMultiTask() {
        return cdMultiTask;
    }

    public void setCdMultiTask(Integer cdMultiTask) {
        this.cdMultiTask = cdMultiTask;
    }


    public Integer getCaseDispatchId() {
        return caseDispatchId;
    }

    public void setCaseDispatchId(Integer caseDispatchId) {
        this.caseDispatchId = caseDispatchId;
    }
}
