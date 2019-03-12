package com.luno.softone.dao;

import com.luno.softone.common.dao.BaseDao;
import com.luno.softone.model.entity.SysMacroEntity;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * 通用字典表Dao
 *
 * @author dcs
 * @email 123456
 * @date 2017-08-22 11:48:16
 */
public interface SysMacroDao extends BaseDao<SysMacroEntity> {

    /**
     * 查询数据字段
     *
     * @param value
     * @return
     */
    List<SysMacroEntity> queryMacrosByValue(@Param("value") String value);

    /**
     * 根据字段名称查询列表
     * @param map
     * @return
     */
    List<SysMacroEntity> queryListByName(Map<String, Object> map);
}
