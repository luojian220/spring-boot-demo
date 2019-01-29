package com.luno.softone.service;


import com.luno.softone.model.entity.SysStaffEntity;

import java.util.List;
import java.util.Map;

/**
 * 员工表Service接口
 *
 * @author dcs
 * @email 123456@qq.com
 * @date 2018-09-28 21:13:48
 */
public interface SysStaffService {

    /**
     * 根据主键查询实体
     *
     * @param staffId 主键
     * @return 实体
     */
    SysStaffEntity queryObject(String staffId);

    /**
     * 分页查询
     *
     * @param map 参数
     * @return list
     */
    List<SysStaffEntity> queryList(Map<String, Object> map);


    /**
     * 分页查询 所有员工列表 luojian
     *
     * @param map 参数
     * @return list
     */
    List<SysStaffEntity> queryListAll(Map<String, Object> map);
    List<SysStaffEntity> queryListAllByDep(Map<String, Object> map);
    
    List<SysStaffEntity> list(Map<String, Object> map);

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
     * @param sysStaff 实体
     * @return 保存条数
     */
    int save(SysStaffEntity sysStaff);

    /**
     * 根据主键更新实体
     *
     * @param sysStaff 实体
     * @return 更新条数
     */
    int update(SysStaffEntity sysStaff);

    /**
     * 根据主键删除
     *
     * @param staffId
     * @return 删除条数
     */
    int delete(String staffId);

    /**
     * 根据主键批量删除
     *
     * @param staffIds
     * @return 删除条数
     */
    void deleteBatch(String[] staffIds);

    /**
     * 生成员工编号
     * @return
     */
    String getStaffId();

    /**
     * 插入或更新
     * @param sysStaff
     * @return
     */
    public int saveOrUpdate(SysStaffEntity sysStaff);

    /**
     * 离职
     * @param staffIds
     * @return
     */
    void quitBatch(String[] staffIds);

    /**
     * 查询调度员工
     * @return
     */
    List<SysStaffEntity> rptStaffList();
}
