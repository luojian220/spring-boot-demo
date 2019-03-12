package com.luno.softone.dao;



import com.luno.softone.common.dao.BaseDao;
import com.luno.softone.model.entity.SysWeixinRoleMenuEntity;

import java.util.List;

/**
 * 微信角色与菜单对应关系表Dao
 *
 * @author xuyang
 * @email 295640759@qq.com
 * @date 2018-12-01 16:29:08
 */
public interface SysWeixinRoleMenuDao extends BaseDao<SysWeixinRoleMenuEntity> {
    /**
     * 根据角色ID，获取菜单ID列表
     */
    List<Long> querywxMenuIdList(Long roleId);

}
