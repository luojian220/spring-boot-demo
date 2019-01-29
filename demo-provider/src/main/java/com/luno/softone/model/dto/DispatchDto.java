package com.luno.softone.model.dto;

public class DispatchDto {
    //案件id
    private Integer cdNcId;
    //是否多人任务  0 正常     1 多人任务
    private Integer cdMultiTask;
    //协助人，逗号分隔
    private String cdAidance;

    public Integer getCdNcId() {
        return cdNcId;
    }

    public void setCdNcId(Integer cdNcId) {
        this.cdNcId = cdNcId;
    }

    public Integer getCdMultiTask() {
        return cdMultiTask;
    }

    public void setCdMultiTask(Integer cdMultiTask) {
        this.cdMultiTask = cdMultiTask;
    }

    public String getCdAidance() {
        return cdAidance;
    }

    public void setCdAidance(String cdAidance) {
        this.cdAidance = cdAidance;
    }
}
