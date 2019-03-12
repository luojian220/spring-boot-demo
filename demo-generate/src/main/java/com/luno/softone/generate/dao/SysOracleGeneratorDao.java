package com.luno.softone.generate.dao;



import com.luno.softone.generate.entity.ResultMap;

import java.util.List;
import java.util.Map;

/**
 * oracle代码生成器
 *
 * @author dcs
 * @email 123456
 * @date 2017年07月23日 上午13:06:04
 */
public interface SysOracleGeneratorDao {

    List<Map<String, Object>> queryList(Map<String, Object> map);

    int queryTotal(Map<String, Object> map);

    Map<String, String> queryTable(String tableName);

    List<ResultMap> queryColumns(String tableName);
}
