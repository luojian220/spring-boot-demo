package com.luno.softone.dao;


import com.luno.softone.common.dao.BaseMapper;
import com.luno.softone.model.entity.CustomerEntity;
import com.luno.softone.model.entity.CustomerShortEntity;
import com.luno.softone.model.entity.example.CustomerExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * Dao
 *
 * @author xuyang
 * @email 295640759@qq.com
 * @date 2018-09-27 20:46:53
 */
public interface CustomerMapper extends BaseMapper<CustomerEntity, CustomerExample> {
	public List<CustomerShortEntity> queryHelpList(Map<String, Object> map);
	
	public List<CustomerEntity> queryTraceList(Map<String, Object> map);
	
	int queryTraceTotal(Map<String, Object> map);
	int insertBatch(@Param("list") List<CustomerEntity> list);
}
