package com.luno.softone.service;

import com.luno.softone.model.entity.CustomerContactEntity;

import java.util.List;
import java.util.Map;

/**
 * Service接口
 *
 * @author dcs
 * @email 123456@qq.com
 * @date 2018-09-27 20:46:53
 */
public interface CustomerContactService {

    /**
     * 根据主键查询实体
     *
     * @param id 主键
     * @return 实体
     */
    CustomerContactEntity queryObject(Integer ccId);

    /**
     * 分页查询
     *
     * @param map 参数
     * @return list
     */
    List<CustomerContactEntity> queryList(Map<String, Object> map);

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
     * @param customerContact 实体
     * @return 保存条数
     */
    int save(CustomerContactEntity customerContact);

    /**
     * 根据主键更新实体
     *
     * @param customerContact 实体
     * @return 更新条数
     */
    int update(CustomerContactEntity customerContact);

    /**
     * 根据主键删除
     *
     * @param ccId
     * @return 删除条数
     */
    int delete(Integer ccId);

    /**
     * 根据主键批量删除
     *
     * @param ccIds
     * @return 删除条数
     */
    int deleteBatch(Integer[] ccIds);
}
