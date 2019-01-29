package com.luno.softone.dao;


import com.luno.softone.model.entity.SysSignEntity;

import java.util.List;
import java.util.Map;

/**
 * 签到表Dao
 *
 * @author xuyang
 * @email 295640759@qq.com
 * @date 2018-10-04 18:49:59
 */
public interface SysSignDao extends BaseDao<SysSignEntity> {
    /**
     * 查询当前考勤记录
     * @param
     * @return
     */
    List<SysSignEntity> queryCurrentDayKaoQinList(Map<String, Object> map);
}
