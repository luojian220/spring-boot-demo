package com.luno.softone.service;

import java.util.List;


/**
 * 微信角色与菜单对应关系
 *
 * @author dcs
 * @email 123456
 * @date 2016年9月18日 上午9:42:30
 */
public interface SysWeixinRoleMenuService {

    void saveOrUpdate(Long roleId, List<Long> menuIdList);

    /**
     * 根据角色ID，获取菜单ID列表
     */
    List<Long> querywxMenuIdList(Long roleId);

}
