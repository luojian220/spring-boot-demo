package com.luno.softone.dao;


import com.luno.softone.model.entity.SysMsgEntity;

/**
 * 消息表Dao
 *
 * @author xuyang
 * @email 295640759@qq.com
 * @date 2018-10-04 11:49:36
 */
public interface SysMsgDao extends BaseDao<SysMsgEntity> {

    /**
     * 批量更新
     * @param id
     * @return
     */
    int updateBatch(Object[] id);
    int deleteOverTime();
    int updateReadOverTime();

}
