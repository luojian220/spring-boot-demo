package com.luno.softone.dao;

import com.luno.softone.model.entity.SysRoleDeptEntity;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * 角色与部门对应关系
 *
 * @author dcs
 * @email 123456
 * @date 2017年9月18日 上午9:18:38
 */
@Mapper
public interface SysRoleDeptDao extends BaseDao<SysRoleDeptEntity> {

    /**
     * 根据角色ID，获取部门ID列表
     */
    List<Long> queryDeptIdList(Long roleId);

    /**
     * 根据用户ID获取权限部门列表
     *
     * @param userId
     * @return
     */
    List<Long> queryDeptIdListByUserId(Long userId);
}
