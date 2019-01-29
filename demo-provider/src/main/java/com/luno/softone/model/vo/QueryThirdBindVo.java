package com.luno.softone.model.vo;


import com.luno.softone.model.entity.SysStaffEntity;

import java.io.Serializable;
import java.util.Date;

/**
 * @ Description：${description}
 * @ Author：luchuanyou
 * @ CreateDate：2018/11/12
 * @Version: 1.0
 */
public class QueryThirdBindVo extends SysStaffEntity implements Serializable{
    private static final long serialVersionUID = 5465267167220206048L;
    //用户id
    private Long userId;
    //第三方绑定id
    private String bindId;
    //类型，1：微信
    private Integer type;
    //上次登录时间
    private Date lastLoginTime;

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getBindId() {
        return bindId;
    }

    public void setBindId(String bindId) {
        this.bindId = bindId;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Date getLastLoginTime() {
        return lastLoginTime;
    }

    public void setLastLoginTime(Date lastLoginTime) {
        this.lastLoginTime = lastLoginTime;
    }
}
