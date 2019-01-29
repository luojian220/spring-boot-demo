package com.luno.softone.model.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * 微信发消息formid收集信息表实体
 * 表名 tb_weixin_form_id
 *
 * @author dcs
 * @email 123456@qq.com
 * @date 2018-11-17 23:14:39
 */
public class TbWeixinFormIdEntity implements Serializable {
    private static final long serialVersionUID = 1L;

    //微信表单id
    private String formId;
    //用户id
    private Long userId;
    //员工id
    private String staffId;
    //微信openid
    private String openId;
    //状态，0：未使用；1：已使用
    private Integer status;
    //创建时间
    private Date createTime;

    /**
     * 设置：微信表单id
     */
    public void setFormId(String formId) {
        this.formId = formId;
    }

    /**
     * 获取：微信表单id
     */
    public String getFormId() {
        return formId;
    }
    /**
     * 设置：用户id
     */
    public void setUserId(Long userId) {
        this.userId = userId;
    }

    /**
     * 获取：用户id
     */
    public Long getUserId() {
        return userId;
    }
    /**
     * 设置：员工id
     */
    public void setStaffId(String staffId) {
        this.staffId = staffId;
    }

    /**
     * 获取：员工id
     */
    public String getStaffId() {
        return staffId;
    }
    /**
     * 设置：微信openid
     */
    public void setOpenId(String openId) {
        this.openId = openId;
    }

    /**
     * 获取：微信openid
     */
    public String getOpenId() {
        return openId;
    }
    /**
     * 设置：状态，0：未使用；1：已使用
     */
    public void setStatus(Integer status) {
        this.status = status;
    }

    /**
     * 获取：状态，0：未使用；1：已使用
     */
    public Integer getStatus() {
        return status;
    }
    /**
     * 设置：创建时间
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    /**
     * 获取：创建时间
     */
    public Date getCreateTime() {
        return createTime;
    }
}
