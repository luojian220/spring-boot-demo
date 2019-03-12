package com.luno.softone.service;



import com.luno.softone.model.entity.SysRoleEntity;
import com.luno.softone.model.entity.UserWindowDto;
import com.luno.softone.common.page.Page;

import java.util.List;
import java.util.Map;


/**
 * 角色
 *
 * @author dcs
 * @email 123456
 * @date 2016年9月18日 上午9:42:52
 */
public interface SysRoleService {

    SysRoleEntity queryObject(Long roleId);

    List<SysRoleEntity> queryList(Map<String, Object> map);

    int queryTotal(Map<String, Object> map);

    void save(SysRoleEntity role);

    void update(SysRoleEntity role);

    void deleteBatch(Long[] roleIds);

    /**
     * 查询用户创建的角色ID列表
     */
    List<Long> queryRoleIdList(Long createUserId);

    /**
     * 分页查询角色审批选择范围
     * @return
     */
    Page<UserWindowDto> queryPageByDto(UserWindowDto userWindowDto, int pageNmu);
}
