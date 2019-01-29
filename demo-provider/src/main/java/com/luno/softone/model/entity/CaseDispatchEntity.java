package com.luno.softone.model.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * 案件调度表实体
 * 表名 case_dispatch
 *
 * @author dcs
 * @email 123456@qq.com
 * @date 2018-10-27 15:48:08
 */
public class CaseDispatchEntity implements Serializable {
    private static final long serialVersionUID = 1L;

    //
    private Integer cdId;
    //案件id
    private Integer cdNcId;
    //案件编号
    private String cdNcNumber;
    //调度时间
    private Date cdTime;
    //调度人id
    private String cdDispatchEmpId;
    //调度人
    private String cdDispatchName;
    //负责人
    private String cdTechnicalEmpId;
    //负责人姓名
    private String cdTechnicalName;
    //任务时间
    private Date cdTaskTime;
    //建议
    private String cdSuggestion;
    //调度状态    1 正常    2 取消
    private String cdDispatchState;
    //是否多人任务  0 正常     1 多人任务
    private Integer cdMultiTask;
    //协助人，逗号分隔
    private String cdAidance;
    //取消时间
    private Date cdCancelTime;

    /**
     * 设置：
     */
    public void setCdId(Integer cdId) {
        this.cdId = cdId;
    }

    /**
     * 获取：
     */
    public Integer getCdId() {
        return cdId;
    }
    /**
     * 设置：案件id
     */
    public void setCdNcId(Integer cdNcId) {
        this.cdNcId = cdNcId;
    }

    /**
     * 获取：案件id
     */
    public Integer getCdNcId() {
        return cdNcId;
    }
    /**
     * 设置：案件编号
     */
    public void setCdNcNumber(String cdNcNumber) {
        this.cdNcNumber = cdNcNumber;
    }

    /**
     * 获取：案件编号
     */
    public String getCdNcNumber() {
        return cdNcNumber;
    }
    /**
     * 设置：调度时间
     */
    public void setCdTime(Date cdTime) {
        this.cdTime = cdTime;
    }

    /**
     * 获取：调度时间
     */
    public Date getCdTime() {
        return cdTime;
    }
    /**
     * 设置：调度人id
     */
    public void setCdDispatchEmpId(String cdDispatchEmpId) {
        this.cdDispatchEmpId = cdDispatchEmpId;
    }

    /**
     * 获取：调度人id
     */
    public String getCdDispatchEmpId() {
        return cdDispatchEmpId;
    }
    /**
     * 设置：调度人
     */
    public void setCdDispatchName(String cdDispatchName) {
        this.cdDispatchName = cdDispatchName;
    }

    /**
     * 获取：调度人
     */
    public String getCdDispatchName() {
        return cdDispatchName;
    }
    /**
     * 设置：负责人
     */
    public void setCdTechnicalEmpId(String cdTechnicalEmpId) {
        this.cdTechnicalEmpId = cdTechnicalEmpId;
    }

    /**
     * 获取：负责人
     */
    public String getCdTechnicalEmpId() {
        return cdTechnicalEmpId;
    }
    /**
     * 设置：负责人姓名
     */
    public void setCdTechnicalName(String cdTechnicalName) {
        this.cdTechnicalName = cdTechnicalName;
    }

    /**
     * 获取：负责人姓名
     */
    public String getCdTechnicalName() {
        return cdTechnicalName;
    }
    /**
     * 设置：任务时间
     */
    public void setCdTaskTime(Date cdTaskTime) {
        this.cdTaskTime = cdTaskTime;
    }

    /**
     * 获取：任务时间
     */
    public Date getCdTaskTime() {
        return cdTaskTime;
    }
    /**
     * 设置：建议
     */
    public void setCdSuggestion(String cdSuggestion) {
        this.cdSuggestion = cdSuggestion;
    }

    /**
     * 获取：建议
     */
    public String getCdSuggestion() {
        return cdSuggestion;
    }
    /**
     * 设置：调度状态    1 正常    2 取消
     */
    public void setCdDispatchState(String cdDispatchState) {
        this.cdDispatchState = cdDispatchState;
    }

    /**
     * 获取：调度状态    1 正常    2 取消
     */
    public String getCdDispatchState() {
        return cdDispatchState;
    }
    /**
     * 设置：是否多人任务  0 正常     1 多人任务
     */
    public void setCdMultiTask(Integer cdMultiTask) {
        this.cdMultiTask = cdMultiTask;
    }

    /**
     * 获取：是否多人任务  0 正常     1 多人任务
     */
    public Integer getCdMultiTask() {
        return cdMultiTask;
    }
    /**
     * 设置：协助人，逗号分隔
     */
    public void setCdAidance(String cdAidance) {
        this.cdAidance = cdAidance;
    }

    /**
     * 获取：协助人，逗号分隔
     */
    public String getCdAidance() {
        return cdAidance;
    }
    /**
     * 设置：取消时间
     */
    public void setCdCancelTime(Date cdCancelTime) {
        this.cdCancelTime = cdCancelTime;
    }

    /**
     * 获取：取消时间
     */
    public Date getCdCancelTime() {
        return cdCancelTime;
    }
}
