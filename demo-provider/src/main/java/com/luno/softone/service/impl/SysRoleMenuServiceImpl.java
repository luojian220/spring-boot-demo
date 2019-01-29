package com.luno.softone.service.impl;

import com.luno.softone.dao.SysRoleMenuDao;
import com.luno.softone.service.SysRoleMenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.CollectionUtils;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * 角色与菜单对应关系
 *
 * @author dcs
 * @email 123456
 * @date 2016年9月18日 上午9:44:35
 */
@Service("sysRoleMenuService")
public class SysRoleMenuServiceImpl implements SysRoleMenuService {
    @Autowired
    private SysRoleMenuDao sysRoleMenuDao;

    @Override
    @Transactional
    public void saveOrUpdate(Long roleId, List<Long> menuIdList) {
        if (CollectionUtils.isEmpty(menuIdList)) {
            return;
        }
        //先删除角色与菜单关系
        sysRoleMenuDao.delete(roleId);

        //保存角色与菜单关系
        if(!menuIdList.isEmpty()){
	        Map<String, Object> map = new HashMap<>();
	        map.put("roleId", roleId);
	        map.put("menuIdList", menuIdList);
	        sysRoleMenuDao.save(map);
        }
    }

    @Override
    public List<Long> queryMenuIdList(Long roleId) {
        return sysRoleMenuDao.queryMenuIdList(roleId);
    }

}
