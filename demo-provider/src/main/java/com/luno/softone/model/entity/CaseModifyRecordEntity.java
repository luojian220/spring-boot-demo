package com.luno.softone.model.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * 案件变动记录实体
 * 表名 case_modify_record
 *
 * @author dcs
 * @email 123456@qq.com
 * @date 2018-10-26 22:32:23
 */
public class CaseModifyRecordEntity implements Serializable {
    private static final long serialVersionUID = 1L;

    //主键
    private Integer cmrId;
    //案件id
    private Integer cmrNcId;
    //类型  1 调度.  2 调度退回 3 . 删除   4 .完成   5.取消调度  6.客户撤案  7.注销  8.再次上报
    private Integer cmrType;
    //操作员工编号
    private String cmrCreateEmpId;
    //操作时间
    private Date cmrCreateTime;
    //技术负责人
    private String cmrTechnicalEmpId;
    //操作原因
    private String cmrReason;
    //调度人
    private String cmrDispatchEmpId;
    //服务单号-仅完成时用
    private String cmrServiceNumber;
    //解决方案-仅完成时用
    private String cmrSolution;
    //备注
    private String cmrRemark;
    //消息id
    private Integer cmrMsgId;
    //是否已发送消息
    private Integer cmrIsMsg;

    // 扩展字段  cmr_ext 4 Y/N 是否可以修改， 结案后允许修改一次
    private String cmrExt;

    // 调度id cmr_dispatch_id
    private Integer cmrDispatchId;
    // 客户ID  cmr_cu_id
    private Integer cmrCuId;

    /**
     * 设置：主键
     */
    public void setCmrId(Integer cmrId) {
        this.cmrId = cmrId;
    }

    /**
     * 获取：主键
     */
    public Integer getCmrId() {
        return cmrId;
    }
    /**
     * 设置：案件id
     */
    public void setCmrNcId(Integer cmrNcId) {
        this.cmrNcId = cmrNcId;
    }

    /**
     * 获取：案件id
     */
    public Integer getCmrNcId() {
        return cmrNcId;
    }
    /**
     * 设置：类型  1 调度.  2 调度退回 3 . 删除   4 .完成   5.取消调度  6.客户撤案  7.注销  8.再次上报
     */
    public void setCmrType(Integer cmrType) {
        this.cmrType = cmrType;
    }

    /**
     * 获取：类型  1 调度.  2 调度退回 3 . 删除   4 .完成   5.取消调度  6.客户撤案   7.注销  8.再次上报
     */
    public Integer getCmrType() {
        return cmrType;
    }
    /**
     * 设置：操作员工编号
     */
    public void setCmrCreateEmpId(String cmrCreateEmpId) {
        this.cmrCreateEmpId = cmrCreateEmpId;
    }

    /**
     * 获取：操作员工编号
     */
    public String getCmrCreateEmpId() {
        return cmrCreateEmpId;
    }
    /**
     * 设置：操作时间
     */
    public void setCmrCreateTime(Date cmrCreateTime) {
        this.cmrCreateTime = cmrCreateTime;
    }

    /**
     * 获取：操作时间
     */
    public Date getCmrCreateTime() {
        return cmrCreateTime;
    }
    /**
     * 设置：技术负责人
     */
    public void setCmrTechnicalEmpId(String cmrTechnicalEmpId) {
        this.cmrTechnicalEmpId = cmrTechnicalEmpId;
    }

    /**
     * 获取：技术负责人
     */
    public String getCmrTechnicalEmpId() {
        return cmrTechnicalEmpId;
    }
    /**
     * 设置：操作原因
     */
    public void setCmrReason(String cmrReason) {
        this.cmrReason = cmrReason;
    }

    /**
     * 获取：操作原因
     */
    public String getCmrReason() {
        return cmrReason;
    }
    /**
     * 设置：调度人
     */
    public void setCmrDispatchEmpId(String cmrDispatchEmpId) {
        this.cmrDispatchEmpId = cmrDispatchEmpId;
    }

    /**
     * 获取：调度人
     */
    public String getCmrDispatchEmpId() {
        return cmrDispatchEmpId;
    }
    /**
     * 设置：服务单号-仅完成时用
     */
    public void setCmrServiceNumber(String cmrServiceNumber) {
        this.cmrServiceNumber = cmrServiceNumber;
    }

    /**
     * 获取：服务单号-仅完成时用
     */
    public String getCmrServiceNumber() {
        return cmrServiceNumber;
    }
    /**
     * 设置：解决方案-仅完成时用
     */
    public void setCmrSolution(String cfSolution) {
        this.cmrSolution = cfSolution;
    }

    /**
     * 获取：解决方案-仅完成时用
     */
    public String getCmrSolution() {
        return cmrSolution;
    }
    /**
     * 设置：备注
     */
    public void setCmrRemark(String cmrRemark) {
        this.cmrRemark = cmrRemark;
    }

    /**
     * 获取：备注
     */
    public String getCmrRemark() {
        return cmrRemark;
    }

    public Integer getCmrMsgId() {
        return cmrMsgId;
    }

    public void setCmrMsgId(Integer cmrMsgId) {
        this.cmrMsgId = cmrMsgId;
    }

    public Integer getCmrIsMsg() {
        return cmrIsMsg;
    }

    public void setCmrIsMsg(Integer cmrIsMsg) {
        this.cmrIsMsg = cmrIsMsg;
    }

    public String getCmrExt() {
        return cmrExt;
    }

    public void setCmrExt(String cmrExt) {
        this.cmrExt = cmrExt;
    }

    public Integer getCmrDispatchId() {
        return cmrDispatchId;
    }

    public void setCmrDispatchId(Integer cmrDispatchId) {
        this.cmrDispatchId = cmrDispatchId;
    }

    public Integer getCmrCuId() {
        return cmrCuId;
    }

    public void setCmrCuId(Integer cmrCuId) {
        this.cmrCuId = cmrCuId;
    }
}
