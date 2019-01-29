package com.luno.softone.model.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * 员工表实体
 * 表名 sys_staff
 *
 * @author dcs
 * @email 123456@qq.com
 * @date 2018-09-28 21:13:48
 */
public class SysStaffEntity implements Serializable {
    private static final long serialVersionUID = 1L;

    //主键ID
    private String staffId;
    //姓名
    private String name;
    //性别
    private String sex;
    //住址
    private String address;
    //部门
    private String dpmName;
    //职称
    private String postingName;
    //办公电话
    private String workPhone;
    //移动电话
    private String mobilePhone;
    //学历
    private String edu;
    //照片
    private String picture;
    //入职日期
    private Date onBoardTime;
    //邮箱
    private String email;
    //员工状态
    private String status;
    //添加时间
    private Date createTime;
    //备注
    private String remark;
    //员工职级
    private String jobLevel;
    //行政级别
    private String admLevel;
    //照片url
    private String picUrl;

    private int count;


  /**
     * 设置：主键ID
     */
    public void setStaffId(String staffId) {
        this.staffId = staffId;
    }

    /**
     * 获取：主键ID
     */
    public String getStaffId() {
        return staffId;
    }
    /**
     * 设置：姓名
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 获取：姓名
     */
    public String getName() {
        return name;
    }
    /**
     * 设置：性别
     */
    public void setSex(String sex) {
        this.sex = sex;
    }

    /**
     * 获取：性别
     */
    public String getSex() {
        return sex;
    }
    /**
     * 设置：住址
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * 获取：住址
     */
    public String getAddress() {
        return address;
    }
    /**
     * 设置：部门
     */
    public void setDpmName(String dpmName) {
        this.dpmName = dpmName;
    }

    /**
     * 获取：部门
     */
    public String getDpmName() {
        return dpmName;
    }
    /**
     * 设置：职称
     */
    public void setPostingName(String postingName) {
        this.postingName = postingName;
    }

    /**
     * 获取：职称
     */
    public String getPostingName() {
        return postingName;
    }
    /**
     * 设置：办公电话
     */
    public void setWorkPhone(String workPhone) {
        this.workPhone = workPhone;
    }

    /**
     * 获取：办公电话
     */
    public String getWorkPhone() {
        return workPhone;
    }
    /**
     * 设置：移动电话
     */
    public void setMobilePhone(String mobilePhone) {
        this.mobilePhone = mobilePhone;
    }

    /**
     * 获取：移动电话
     */
    public String getMobilePhone() {
        return mobilePhone;
    }
    /**
     * 设置：学历
     */
    public void setEdu(String edu) {
        this.edu = edu;
    }

    /**
     * 获取：学历
     */
    public String getEdu() {
        return edu;
    }
    /**
     * 设置：照片
     */
    public void setPicture(String picture) {
        this.picture = picture;
    }

    /**
     * 获取：照片
     */
    public String getPicture() {
        return picture;
    }
    /**
     * 设置：入职日期
     */
    public void setOnBoardTime(Date onBoardTime) {
        this.onBoardTime = onBoardTime;
    }

    /**
     * 获取：入职日期
     */
    public Date getOnBoardTime() {
        return onBoardTime;
    }
    /**
     * 设置：邮箱
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * 获取：邮箱
     */
    public String getEmail() {
        return email;
    }
    /**
     * 设置：员工状态
     */
    public void setStatus(String status) {
        this.status = status;
    }

    /**
     * 获取：员工状态
     */
    public String getStatus() {
        return status;
    }
    /**
     * 设置：添加时间
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    /**
     * 获取：添加时间
     */
    public Date getCreateTime() {
        return createTime;
    }
    /**
     * 设置：备注
     */
    public void setRemark(String remark) {
        this.remark = remark;
    }

    /**
     * 获取：备注
     */
    public String getRemark() {
        return remark;
    }
    /**
     * 设置：员工职级
     */
    public void setJobLevel(String jobLevel) {
        this.jobLevel = jobLevel;
    }

    /**
     * 获取：员工职级
     */
    public String getJobLevel() {
        return jobLevel;
    }
    /**
     * 设置：行政级别
     */
    public void setAdmLevel(String admLevel) {
        this.admLevel = admLevel;
    }

    /**
     * 获取：行政级别
     */
    public String getAdmLevel() {
        return admLevel;
    }

    public String getPicUrl() {
        return picUrl;
    }

    public void setPicUrl(String picUrl) {
        this.picUrl = picUrl;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }
}
