package com.luno.softone.service;


import com.luno.softone.model.entity.SysSignEntity;
import com.luno.softone.utils.SykjException;

import java.util.List;
import java.util.Map;

/**
 * 签到表Service接口
 *
 * @author dcs
 * @email 123456@qq.com
 * @date 2018-10-04 18:49:59
 */
public interface SysSignService {

    /**
     * 根据主键查询实体
     *
     * @param id 主键
     * @return 实体
     */
    SysSignEntity queryObject(Integer id);

    /**
     * 分页查询
     *
     * @param map 参数
     * @return list
     */
    List<SysSignEntity> queryList(Map<String, Object> map);

    /**
     * 分页统计总数
     *
     * @param map 参数
     * @return 总数
     */
    int queryTotal(Map<String, Object> map);

    /**
     * 保存实体
     *
     * @param sysSign 实体
     * @return 保存条数
     */
    int save(SysSignEntity sysSign) throws SykjException;

    /**
     * 根据主键更新实体
     *
     * @param sysSign 实体
     * @return 更新条数
     */
    int update(SysSignEntity sysSign);

    /**
     * 根据主键删除
     *
     * @param id
     * @return 删除条数
     */
    int delete(Integer id);

    /**
     * 根据主键批量删除
     *
     * @param ids
     * @return 删除条数
     */
    int deleteBatch(Integer[] ids);

    /**
     * 查询当前考勤记录
     * @param staffId
     * @return
     */
    List<SysSignEntity> queryCurrentDayKaoQinList(String staffId);
}
