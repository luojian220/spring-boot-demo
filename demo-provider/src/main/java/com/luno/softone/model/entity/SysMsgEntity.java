package com.luno.softone.model.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * 消息表实体
 * 表名 sys_msg
 *
 * @author dcs
 * @email 123456@qq.com
 * @date 2018-10-04 11:49:36
 */
public class SysMsgEntity implements Serializable {
    private static final long serialVersionUID = 1L;

    //主键ID
    private Integer smId;
    //标题
    private String smTitle;
    //内容
    private String smContent;
    //发布时间
    private Date smPublishTime;
    //添加时间
    private Date smAddTime;
    //员工编号
    private String smStaffId;
    //状态 1 未发布，2 已发布
    private Integer smState;
    //是否已读 0 否，1 是
    private Integer smIsRead;
    //消息类型 0 普通消息,1 只读消息,2 定时消息
    private Integer smType;
    //员工姓名
    private String staffName;
    //读取时间
    private Date smReadTime;

    /**
     * 设置：主键ID
     */
    public void setSmId(Integer smId) {
        this.smId = smId;
    }

    /**
     * 获取：主键ID
     */
    public Integer getSmId() {
        return smId;
    }
    /**
     * 设置：标题
     */
    public void setSmTitle(String smTitle) {
        this.smTitle = smTitle;
    }

    /**
     * 获取：标题
     */
    public String getSmTitle() {
        return smTitle;
    }
    /**
     * 设置：内容
     */
    public void setSmContent(String smContent) {
        this.smContent = smContent;
    }

    /**
     * 获取：内容
     */
    public String getSmContent() {
        return smContent;
    }
    /**
     * 设置：发布时间
     */
    public void setSmPublishTime(Date smPublishTime) {
        this.smPublishTime = smPublishTime;
    }

    /**
     * 获取：发布时间
     */
    public Date getSmPublishTime() {
        return smPublishTime;
    }
    /**
     * 设置：添加时间
     */
    public void setSmAddTime(Date smAddTime) {
        this.smAddTime = smAddTime;
    }

    /**
     * 获取：添加时间
     */
    public Date getSmAddTime() {
        return smAddTime;
    }
    /**
     * 设置：员工编号
     */
    public void setSmStaffId(String smStaffId) {
        this.smStaffId = smStaffId;
    }

    /**
     * 获取：员工编号
     */
    public String getSmStaffId() {
        return smStaffId;
    }
    /**
     * 设置：状态 0 未发布，1 已发布
     */
    public void setSmState(Integer smState) {
        this.smState = smState;
    }

    /**
     * 获取：状态 0 未发布，1 已发布
     */
    public Integer getSmState() {
        return smState;
    }
    /**
     * 设置：是否已读 0 否，1 是
     */
    public void setSmIsRead(Integer smIsRead) {
        this.smIsRead = smIsRead;
    }

    /**
     * 获取：是否已读 0 否，1 是
     */
    public Integer getSmIsRead() {
        return smIsRead;
    }
    /**
     * 设置：消息类型 0 普通消息,1 只读消息,2 定时消息
     */
    public void setSmType(Integer smType) {
        this.smType = smType;
    }

    /**
     * 获取：消息类型 0 普通消息,1 只读消息,2 定时消息
     */
    public Integer getSmType() {
        return smType;
    }

    public String getStaffName() {
        return staffName;
    }

    public void setStaffName(String staffName) {
        this.staffName = staffName;
    }

    public Date getSmReadTime() {
        return smReadTime;
    }

    public void setSmReadTime(Date smReadTime) {
        this.smReadTime = smReadTime;
    }
}
