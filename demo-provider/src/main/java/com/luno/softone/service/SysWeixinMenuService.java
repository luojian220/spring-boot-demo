package com.luno.softone.service;

import com.luno.softone.model.entity.SysWeixinMenuEntity;

import java.util.List;
import java.util.Map;

/**
 * 微信菜单表Service接口
 *
 * @author dcs
 * @email 123456@qq.com
 * @date 2018-12-01 16:01:28
 */
public interface SysWeixinMenuService {


    /**
     * 分页查询
     *
     * @param map 参数
     * @return list
     */
    List<SysWeixinMenuEntity> queryList(Map<String, Object> map);

    /**
     * 分页统计总数
     *
     * @param map 参数
     * @return 总数
     */
    int queryTotal(Map<String, Object> map);

    /**
     * 查询用户的权限列表
     */
    List<SysWeixinMenuEntity> queryUserList(Long userId);

}
