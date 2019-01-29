package com.luno.softone.service.impl;

import com.luno.softone.dao.SysWeixinRoleMenuDao;
import com.luno.softone.service.SysWeixinRoleMenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.CollectionUtils;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 微信角色与菜单对应关系
 */
@Service
public class SysWeixinRoleMenuServiceImpl implements SysWeixinRoleMenuService {

    @Autowired
    private SysWeixinRoleMenuDao sysWeixinRoleMenuDao;

    @Override
    @Transactional
    public void saveOrUpdate(Long roleId, List<Long> wxMenuIdList) {
        if (CollectionUtils.isEmpty(wxMenuIdList)) {
            return;
        }
        //先删除微信角色与菜单关系
        sysWeixinRoleMenuDao.delete(roleId);
        if(!wxMenuIdList.isEmpty()){
	        //保存微信角色与菜单关系
	        Map<String, Object> map = new HashMap<>();
	        map.put("roleId", roleId);
	        map.put("wxMenuIdList", wxMenuIdList);
	        sysWeixinRoleMenuDao.save(map);
        }
    }

    @Override
    public List<Long> querywxMenuIdList(Long roleId) {
        return sysWeixinRoleMenuDao.querywxMenuIdList(roleId);
    }


}
