package com.luno.softone.service.impl;

import com.luno.softone.dao.SysWeixinMenuDao;
import com.luno.softone.model.entity.SysWeixinMenuEntity;
import com.luno.softone.service.SysWeixinMenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;


/**
 * 微信菜单表Service实现类
 *
 * @author dcs
 * @email 123456@qq.com
 * @date 2018-12-01 16:01:28
 */
@Service
public class SysWeixinMenuServiceImpl implements SysWeixinMenuService {
    @Autowired
    private SysWeixinMenuDao sysWeixinMenuDao;

    @Override
    public List<SysWeixinMenuEntity> queryUserList(Long userId) {
        return sysWeixinMenuDao.queryUserList(userId);
    }


    @Override
    public List<SysWeixinMenuEntity> queryList(Map<String, Object> map) {
        return sysWeixinMenuDao.queryList(map);
    }

    @Override
    public int queryTotal(Map<String, Object> map) {
        return sysWeixinMenuDao.queryTotal(map);
    }
}
