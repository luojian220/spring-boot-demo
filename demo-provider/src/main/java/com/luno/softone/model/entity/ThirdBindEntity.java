package com.luno.softone.model.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * 第三方账号绑定关系表实体
 * 表名 tb_third_bind
 *
 * @author dcs
 * @email 123456@qq.com
 * @date 2018-10-06 01:01:11
 */
public class ThirdBindEntity implements Serializable {
    private static final long serialVersionUID = 1L;

    //主键id
    private Long id;
    //用户id
    private Long userId;
    //第三方绑定id
    private String bindId;
    //类型，1：微信
    private Integer type;
    //上次登录时间
    private Date lastLoginTime;
    //上次登录ip
    private String lastLoginIp;
    //更新时间
    private Date updateTime;
    //创建时间
    private Date createTime;
    //状态，0：已解绑；1：已绑定
    private Integer status;
    //微信昵称
    private String wxNickname;

    /**
     * 设置：主键id
     */
    public void setId(Long id) {
        this.id = id;
    }

    /**
     * 获取：主键id
     */
    public Long getId() {
        return id;
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
     * 设置：第三方绑定id
     */
    public void setBindId(String bindId) {
        this.bindId = bindId;
    }

    /**
     * 获取：第三方绑定id
     */
    public String getBindId() {
        return bindId;
    }
    /**
     * 设置：类型，1：微信
     */
    public void setType(Integer type) {
        this.type = type;
    }

    /**
     * 获取：类型，1：微信
     */
    public Integer getType() {
        return type;
    }
    /**
     * 设置：上次登录时间
     */
    public void setLastLoginTime(Date lastLoginTime) {
        this.lastLoginTime = lastLoginTime;
    }

    /**
     * 获取：上次登录时间
     */
    public Date getLastLoginTime() {
        return lastLoginTime;
    }
    /**
     * 设置：上次登录ip
     */
    public void setLastLoginIp(String lastLoginIp) {
        this.lastLoginIp = lastLoginIp;
    }

    /**
     * 获取：上次登录ip
     */
    public String getLastLoginIp() {
        return lastLoginIp;
    }
    /**
     * 设置：更新时间
     */
    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    /**
     * 获取：更新时间
     */
    public Date getUpdateTime() {
        return updateTime;
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

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getWxNickname() {
        return wxNickname;
    }

    public void setWxNickname(String wxNickname) {
        this.wxNickname = wxNickname;
    }
}
