package com.luno.softone.model.entity;

import java.io.Serializable;

/**
 * 微信角色与菜单对应关系表实体
 * 表名 sys_weixin_role_menu
 *
 * @author dcs
 * @email 123456@qq.com
 * @date 2018-12-01 16:29:08
 */
public class SysWeixinRoleMenuEntity implements Serializable {
    private static final long serialVersionUID = 1L;

    //主键ID
    private Long id;
    //角色ID
    private Long roleId;
    //微信菜单ID
    private Long menuId;

    /**
     * 设置：主键ID
     */
    public void setId(Long id) {
        this.id = id;
    }

    /**
     * 获取：主键ID
     */
    public Long getId() {
        return id;
    }
    /**
     * 设置：角色ID
     */
    public void setRoleId(Long roleId) {
        this.roleId = roleId;
    }

    /**
     * 获取：角色ID
     */
    public Long getRoleId() {
        return roleId;
    }
    /**
     * 设置：微信菜单ID
     */
    public void setMenuId(Long menuId) {
        this.menuId = menuId;
    }

    /**
     * 获取：微信菜单ID
     */
    public Long getMenuId() {
        return menuId;
    }
}
