package com.luno.softone.service.impl;

import com.luno.softone.dao.SysLogDao;
import com.luno.softone.model.entity.SysLogEntity;
import com.luno.softone.service.SysLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.List;
import java.util.Map;


@Service("sysLogService")
public class SysLogServiceImpl implements SysLogService {
    @Autowired
    private SysLogDao sysLogDao;
    @Autowired
    private RestTemplate restTemplate;

    @Override
    public SysLogEntity queryObject(Long id) {
        return sysLogDao.queryObject(id);
    }

    @Override
    public List<SysLogEntity> queryList(Map<String, Object> map) {
        List<SysLogEntity> list = sysLogDao.queryList(map);
        return list;
    }

    @Override
    public int queryTotal(Map<String, Object> map) {
        return sysLogDao.queryTotal(map);
    }

    @Override
    public void save(SysLogEntity sysLog) {
        sysLogDao.save(sysLog);
    }

    @Override
    public void update(SysLogEntity sysLog) {
        sysLogDao.update(sysLog);
    }

    @Override
    public void delete(Long id) {
        sysLogDao.delete(id);
    }

    @Override
    public void deleteBatch(Long[] ids) {
        sysLogDao.deleteBatch(ids);
    }

}
