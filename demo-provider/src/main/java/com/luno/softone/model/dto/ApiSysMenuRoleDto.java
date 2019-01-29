package com.luno.softone.model.dto;

import java.io.Serializable;

public class ApiSysMenuRoleDto implements Serializable {
    private static final long serialVersionUID = 1L;
    //父菜单ID
    private Long parentId;
    //主键ID
    private Long menuId;

    //权限标识（0 没权限，1 有权限）
    private String perms;

    //菜单名称
    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Long getMenuId() {
        return menuId;
    }

    public void setMenuId(Long menuId) {
        this.menuId = menuId;
    }

    public Long getParentId() {
        return parentId;
    }

    public void setParentId(Long parentId) {
        this.parentId = parentId;
    }

    public String getPerms() {
        return perms;
    }

    public void setPerms(String perms) {
        this.perms = perms;
    }
}
