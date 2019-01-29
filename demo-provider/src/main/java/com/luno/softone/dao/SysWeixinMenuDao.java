package com.luno.softone.dao;


import com.luno.softone.model.dto.ApiSysMenuRoleDto;
import com.luno.softone.model.entity.SysWeixinMenuEntity;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 微信菜单表Dao
 *
 * @author xuyang
 * @email 295640759@qq.com
 * @date 2018-12-01 16:01:28
 */
public interface SysWeixinMenuDao extends BaseDao<SysWeixinMenuEntity> {

    List<ApiSysMenuRoleDto> queryRolelist(@Param("userId") Long userId);

    /**
     * 查询用户的权限列表
     */
    List<SysWeixinMenuEntity> queryUserList(Long userId);


}
