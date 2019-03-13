package com.luno.softone.service.impl;

import com.luno.softone.dao.CustomerContactMapper;
import com.luno.softone.model.entity.CustomerContactEntity;
import com.luno.softone.service.CustomerContactService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;


/**
 * Service实现类
 *
 * @author dcs
 * @email 123456@qq.com
 * @date 2018-09-27 20:46:53
 */
@Service("customerContactService")
public class CustomerContactServiceImpl implements CustomerContactService {
    @Autowired
    private CustomerContactMapper customerContactMapper;

    @Override
    public CustomerContactEntity queryObject(Integer ccId) {
        return customerContactMapper.selectByPrimaryKey((long)ccId);
    }

    @Override
    public List<CustomerContactEntity> queryList(Map<String, Object> map) {
        return customerContactMapper.queryList(map);
    }

    @Override
    public int queryTotal(Map<String, Object> map) {
        return customerContactMapper.queryTotal(map);
    }

    @Override
    public int save(CustomerContactEntity customerContact) {
        return customerContactMapper.insertSelective(customerContact);
    }

    @Override
    public int update(CustomerContactEntity customerContact) {
        return customerContactMapper.updateByPrimaryKeySelective(customerContact);
    }

    @Override
    public int delete(Integer ccId) {
        return customerContactMapper.deleteByPrimaryKey((long)ccId);
    }

    @Override
    public int deleteBatch(Integer[] ccIds) {
        return customerContactMapper.deleteBatch(ccIds);
    }
}
