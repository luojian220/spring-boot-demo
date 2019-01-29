package com.luno.softone.dao;

import com.luno.softone.model.entity.SysStaffEntity;

import java.util.List;
import java.util.Map;

/**
 * 员工表Dao
 *
 * @author xuyang
 * @email 295640759@qq.com
 * @date 2018-09-28 21:13:48
 */
public interface SysStaffDao extends BaseDao<SysStaffEntity> {

    List<SysStaffEntity> queryListAll(Map<String, Object> map);
    
    List<SysStaffEntity> queryListAllByDep(Map<String, Object> map);
    
    List<SysStaffEntity> list(Map<String, Object> map);
    
    int saveOrUpdate(SysStaffEntity staffEntity);

    int quitBatch(Object[] id);

    List<SysStaffEntity> rptStaffList();
}
