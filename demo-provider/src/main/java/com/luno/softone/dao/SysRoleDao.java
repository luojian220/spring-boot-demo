package com.luno.softone.dao;

import com.luno.softone.common.dao.BaseDao;
import com.luno.softone.model.entity.SysRoleEntity;
import com.luno.softone.model.entity.UserWindowDto;

import java.util.List;

/**
 * 角色管理
 *
 * @author dcs
 * @email 123456
 * @date 2016年9月18日 上午9:33:33
 */
public interface SysRoleDao extends BaseDao<SysRoleEntity> {

    /**
     * 查询用户创建的角色ID列表
     */
    List<Long> queryRoleIdList(Long createUserId);

    /**
     * 查询角色审批选择范围
     * @return
     */
    List<UserWindowDto> queryPageByDto(UserWindowDto userWindowDto);
}
