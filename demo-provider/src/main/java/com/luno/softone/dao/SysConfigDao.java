package com.luno.softone.dao;

import com.luno.softone.common.dao.BaseDao;
import com.luno.softone.model.entity.SysConfigEntity;
import org.apache.ibatis.annotations.Param;

/**
 * 系统配置信息
 *
 * @author dcs
 * @email 123456
 * @date 2016年12月4日 下午6:46:16
 */
public interface SysConfigDao extends BaseDao<SysConfigEntity> {

    /**
     * 根据key，查询value
     */
    String queryByKey(String paramKey);

    /**
     * 根据key，更新value
     *
     * @param key
     * @param value
     * @return
     */
    int updateValueByKey(@Param("key") String key, @Param("value") String value);

}
