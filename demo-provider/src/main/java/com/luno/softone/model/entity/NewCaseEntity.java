package com.luno.softone.model.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * 实体
 * 表名 new_case
 *
 * @author dcs
 * @email 123456@qq.com
 * @date 2018-09-30 21:58:14
 */
public class NewCaseEntity implements Serializable {
    private static final long serialVersionUID = 1L;

    //
    private Integer ncId;
    //案件编号
    private String ncNumber;
    //客户id
    private Integer ncCuId;
    //客户编号
    private String ncCuNumber;
    //客户名称
    private String ncCuName;
    //客户地址
    private String ncAddress;
    //联系人
    private String ncContactPerson;
    //联系电话
    private String ncContactPhone;
    //任务时间
    private Date ncTaskTime;
    //案件类型
    private String ncCaseType;
    //案件状态  '0''未调度','1''外勤退回','2''调度退回','3''已调度','4''已删除','5''已接受','6''已注销','7''已完成','8''客户撤案','9''转单案件','10' '已转单','11''客户撤案'
    private String ncCaseState;
    //默认状态
    private String ncDefaultState;
    //设备配置
    private String ncMachineConfig;
    //是否评价
    private Integer ncIsReview;
    //是否多人任务
    private Integer ncIsManyTask;
    //创建人编号
    private String ncAddEmpId;
    //创建人名称
    private String ncAddEmpName;
    //创建时间
    private Date ncAddTime;
    //更新编号 nc_up_emp_id
    private String ncUpEmpId;
    //更新人名称
    private String ncUpEmpName;
    //更新时间
    private Date ncUpTime;
    //更新备注
    private String ncRemark;
    //
    private String ncOpenNumber;
    //
    private String ncOpenName;
    //
    private Date ncOpenTime;
    //'报案类别  1 IT报案   2 工程报案'
    private Integer ncType;

    // 是否转单 nc_is_transfer  ncIsTransfer 1 是  0否
    private Integer ncIsTransfer;

    
    //负责人姓名(已调度)
    private String cdTechnicalName;
    
    
    public String getCdTechnicalName() {
		return cdTechnicalName;
	}

	public void setCdTechnicalName(String cdTechnicalName) {
		this.cdTechnicalName = cdTechnicalName;
	}

	/**
     * 设置：
     */
    public void setNcId(Integer ncId) {
        this.ncId = ncId;
    }

    /**
     * 获取：
     */
    public Integer getNcId() {
        return ncId;
    }
    /**
     * 设置：案件编号
     */
    public void setNcNumber(String ncNumber) {
        this.ncNumber = ncNumber;
    }

    /**
     * 获取：案件编号
     */
    public String getNcNumber() {
        return ncNumber;
    }
    /**
     * 设置：客户id
     */
    public void setNcCuId(Integer ncCuId) {
        this.ncCuId = ncCuId;
    }

    /**
     * 获取：客户id
     */
    public Integer getNcCuId() {
        return ncCuId;
    }
    /**
     * 设置：客户编号
     */
    public void setNcCuNumber(String ncCuNumber) {
        this.ncCuNumber = ncCuNumber;
    }

    /**
     * 获取：客户编号
     */
    public String getNcCuNumber() {
        return ncCuNumber;
    }
    /**
     * 设置：客户名称
     */
    public void setNcCuName(String ncCuName) {
        this.ncCuName = ncCuName;
    }

    /**
     * 获取：客户名称
     */
    public String getNcCuName() {
        return ncCuName;
    }
    /**
     * 设置：客户地址
     */
    public void setNcAddress(String ncAddress) {
        this.ncAddress = ncAddress;
    }

    /**
     * 获取：客户地址
     */
    public String getNcAddress() {
        return ncAddress;
    }
    /**
     * 设置：联系人
     */
    public void setNcContactPerson(String ncContactPerson) {
        this.ncContactPerson = ncContactPerson;
    }

    /**
     * 获取：联系人
     */
    public String getNcContactPerson() {
        return ncContactPerson;
    }
    /**
     * 设置：联系电话
     */
    public void setNcContactPhone(String ncContactPhone) {
        this.ncContactPhone = ncContactPhone;
    }

    /**
     * 获取：联系电话
     */
    public String getNcContactPhone() {
        return ncContactPhone;
    }
    /**
     * 设置：任务时间
     */
    public void setNcTaskTime(Date ncTaskTime) {
        this.ncTaskTime = ncTaskTime;
    }

    /**
     * 获取：任务时间
     */
    public Date getNcTaskTime() {
        return ncTaskTime;
    }
    /**
     * 设置：案件类型
     */
    public void setNcCaseType(String ncCaseType) {
        this.ncCaseType = ncCaseType;
    }

    /**
     * 获取：案件类型
     */
    public String getNcCaseType() {
        return ncCaseType;
    }
    /**
     * 设置：案件状态
     */
    public void setNcCaseState(String ncCaseState) {
        this.ncCaseState = ncCaseState;
    }

    /**
     * 获取：案件状态
     */
    public String getNcCaseState() {
        return ncCaseState;
    }
    /**
     * 设置：默认状态
     */
    public void setNcDefaultState(String ncDefaultState) {
        this.ncDefaultState = ncDefaultState;
    }

    /**
     * 获取：默认状态
     */
    public String getNcDefaultState() {
        return ncDefaultState;
    }
    /**
     * 设置：设备配置
     */
    public void setNcMachineConfig(String ncMachineConfig) {
        this.ncMachineConfig = ncMachineConfig;
    }

    /**
     * 获取：设备配置
     */
    public String getNcMachineConfig() {
        return ncMachineConfig;
    }
    /**
     * 设置：是否评价
     */
    public void setNcIsReview(Integer ncIsReview) {
        this.ncIsReview = ncIsReview;
    }

    /**
     * 获取：是否评价
     */
    public Integer getNcIsReview() {
        return ncIsReview;
    }
    /**
     * 设置：是否多人任务
     */
    public void setNcIsManyTask(Integer ncIsManyTask) {
        this.ncIsManyTask = ncIsManyTask;
    }

    /**
     * 获取：是否多人任务
     */
    public Integer getNcIsManyTask() {
        return ncIsManyTask;
    }
    /**
     * 设置：创建人编号
     */
    public void setNcAddEmpId(String ncAddEmpId) {
        this.ncAddEmpId = ncAddEmpId;
    }

    /**
     * 获取：创建人编号
     */
    public String getNcAddEmpId() {
        return ncAddEmpId;
    }
    /**
     * 设置：创建人名称
     */
    public void setNcAddEmpName(String ncAddEmpName) {
        this.ncAddEmpName = ncAddEmpName;
    }

    /**
     * 获取：创建人名称
     */
    public String getNcAddEmpName() {
        return ncAddEmpName;
    }
    /**
     * 设置：创建时间
     */
    public void setNcAddTime(Date ncAddTime) {
        this.ncAddTime = ncAddTime;
    }

    /**
     * 获取：创建时间
     */
    public Date getNcAddTime() {
        return ncAddTime;
    }
    /**
     * 设置：更新人名称
     */
    public void setNcUpEmpName(String ncUpEmpName) {
        this.ncUpEmpName = ncUpEmpName;
    }

    /**
     * 获取：更新人名称
     */
    public String getNcUpEmpName() {
        return ncUpEmpName;
    }
    /**
     * 设置：更新时间
     */
    public void setNcUpTime(Date ncUpTime) {
        this.ncUpTime = ncUpTime;
    }

    /**
     * 获取：更新时间
     */
    public Date getNcUpTime() {
        return ncUpTime;
    }
    /**
     * 设置：更新备注
     */
    public void setNcRemark(String ncRemark) {
        this.ncRemark = ncRemark;
    }

    /**
     * 获取：更新备注
     */
    public String getNcRemark() {
        return ncRemark;
    }
    /**
     * 设置：
     */
    public void setNcOpenNumber(String ncOpenNumber) {
        this.ncOpenNumber = ncOpenNumber;
    }

    /**
     * 获取：
     */
    public String getNcOpenNumber() {
        return ncOpenNumber;
    }
    /**
     * 设置：
     */
    public void setNcOpenName(String ncOpenName) {
        this.ncOpenName = ncOpenName;
    }

    /**
     * 获取：
     */
    public String getNcOpenName() {
        return ncOpenName;
    }
    /**
     * 设置：
     */
    public void setNcOpenTime(Date ncOpenTime) {
        this.ncOpenTime = ncOpenTime;
    }

    /**
     * 获取：
     */
    public Date getNcOpenTime() {
        return ncOpenTime;
    }

    public String getNcUpEmpId() {
        return ncUpEmpId;
    }

    public void setNcUpEmpId(String ncUpEmpId) {
        this.ncUpEmpId = ncUpEmpId;
    }

    public Integer getNcType() {
        return ncType;
    }

    public void setNcType(Integer ncType) {
        this.ncType = ncType;
    }

    public Integer getNcIsTransfer() {
        return ncIsTransfer;
    }

    public void setNcIsTransfer(Integer ncIsTransfer) {
        this.ncIsTransfer = ncIsTransfer;
    }
}
