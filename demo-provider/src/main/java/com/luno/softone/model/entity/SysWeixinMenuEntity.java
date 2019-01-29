package com.luno.softone.model.entity;

import java.io.Serializable;

/**
 * 微信菜单表实体
 * 表名 sys_weixin_menu
 *
 * @author dcs
 * @email 123456@qq.com
 * @date 2018-12-01 16:01:28
 */
public class SysWeixinMenuEntity implements Serializable {
    private static final long serialVersionUID = 1L;

    //主键ID
    private Long wxMenuId;
    //父菜单ID
    private Long parentId;
    //菜单名称
    private String name;
    //权限标识（0 没权限，1 有权限）
    private String perms;
    //排序
    private Integer orderNum;
    //状态
    private Integer status;

    /**
     * 设置：主键ID
     */
    public void setWxMenuId(Long wxMenuId) {
        this.wxMenuId = wxMenuId;
    }

    /**
     * 获取：主键ID
     */
    public Long getWxMenuId() {
        return wxMenuId;
    }
    /**
     * 设置：父菜单ID
     */
    public void setParentId(Long parentId) {
        this.parentId = parentId;
    }

    /**
     * 获取：父菜单ID
     */
    public Long getParentId() {
        return parentId;
    }
    /**
     * 设置：菜单名称
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 获取：菜单名称
     */
    public String getName() {
        return name;
    }
    /**
     * 设置：权限标识（0 没权限，1 有权限）
     */
    public void setPerms(String perms) {
        this.perms = perms;
    }

    /**
     * 获取：权限标识（0 没权限，1 有权限）
     */
    public String getPerms() {
        return perms;
    }
    /**
     * 设置：排序
     */
    public void setOrderNum(Integer orderNum) {
        this.orderNum = orderNum;
    }

    /**
     * 获取：排序
     */
    public Integer getOrderNum() {
        return orderNum;
    }
    /**
     * 设置：状态
     */
    public void setStatus(Integer status) {
        this.status = status;
    }

    /**
     * 获取：状态
     */
    public Integer getStatus() {
        return status;
    }
}
