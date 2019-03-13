package com.luno.softone.service;



import com.luno.softone.model.entity.CustomerAddressEntity;

import java.util.List;
import java.util.Map;

/**
 * Service接口
 *
 * @author dcs
 * @email 123456@qq.com
 * @date 2018-09-27 20:46:53
 */
public interface CustomerAddressService {

    /**
     * 根据主键查询实体
     *
     * @param id 主键
     * @return 实体
     */
    CustomerAddressEntity queryObject(Integer caId);

    /**
     * 分页查询
     *
     * @param map 参数
     * @return list
     */
    List<CustomerAddressEntity> queryList(Map<String, Object> map);

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
     * @param customerAddress 实体
     * @return 保存条数
     */
    int save(CustomerAddressEntity customerAddress);

    /**
     * 根据主键更新实体
     *
     * @param customerAddress 实体
     * @return 更新条数
     */
    int update(CustomerAddressEntity customerAddress);

    /**
     * 根据主键删除
     *
     * @param caId
     * @return 删除条数
     */
    int delete(Integer caId);

    /**
     * 根据主键批量删除
     *
     * @param caIds
     * @return 删除条数
     */
    int deleteBatch(Integer[] caIds);
}
