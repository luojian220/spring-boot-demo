package com.luno.softone.service;

import com.luno.softone.model.entity.CustomerEntity;
import com.luno.softone.model.entity.CustomerShortEntity;

import java.util.List;
import java.util.Map;

/**
 * Service接口
 *
 * @author dcs
 * @email 123456@qq.com
 * @date 2018-09-28 21:09:04
 */
public interface CustomerService {

    /**
     * 根据主键查询实体
     *
     * @param id 主键
     * @return 实体
     */
    CustomerEntity queryObject(Integer cuId);

    /**
     * 分页查询
     *
     * @param map 参数
     * @return list
     */
    List<CustomerEntity> queryList(Map<String, Object> map);
    
    /**
     * 跟踪记录列表
     * @param map
     * @return
     */
    List<CustomerEntity> queryTraceList(Map<String, Object> map);
    
    /**
     * 下拉框数据
     * @param map
     * @return
     */
    List<CustomerShortEntity> queryHelpList(Map<String, Object> map);
    
    /**
     * 分页统计总数
     *
     * @param map 参数
     * @return 总数
     */
    int queryTotal(Map<String, Object> map);
    int queryTraceTotal(Map<String, Object> map);
    
    /**
     * 保存实体
     *
     * @param customer 实体
     * @return 保存条数
     */
    int save(CustomerEntity customer);

    /**
     * 根据主键更新实体
     *
     * @param customer 实体
     * @return 更新条数
     */
    int update(CustomerEntity customer);

    /**
     * 根据主键删除
     *
     * @param cuId
     * @return 删除条数
     */
    int delete(Integer cuId);

    /**
     * 根据主键批量删除
     *
     * @param cuIds
     * @return 删除条数
     */
    int deleteBatch(Integer[] cuIds);


    int insertBatch(List<CustomerEntity> list);
}
