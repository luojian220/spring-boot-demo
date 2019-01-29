package com.luno.softone.service;


import com.luno.softone.model.entity.SysLogEntity;

import java.util.List;
import java.util.Map;

/**
 * 系统日志
 *
 * @author dcs
 * @email 123456
 * @date 2017-03-08 10:40:56
 */
public interface SysLogService {

    SysLogEntity queryObject(Long id);

    List<SysLogEntity> queryList(Map<String, Object> map);

    int queryTotal(Map<String, Object> map);

    void save(SysLogEntity sysLog);

    void update(SysLogEntity sysLog);

    void delete(Long id);

    void deleteBatch(Long[] ids);
}
