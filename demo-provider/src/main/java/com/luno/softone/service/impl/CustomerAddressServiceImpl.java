package com.luno.softone.service.impl;

import com.luno.softone.dao.CustomerAddressMapper;
import com.luno.softone.model.entity.CustomerAddressEntity;
import com.luno.softone.service.CustomerAddressService;
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
@Service("customerAddressService")
public class CustomerAddressServiceImpl implements CustomerAddressService {
    @Autowired
    private CustomerAddressMapper customerAddressMapper;

    @Override
    public CustomerAddressEntity queryObject(Integer caId) {
        return customerAddressMapper.selectByPrimaryKey((long)caId);
    }

    @Override
    public List<CustomerAddressEntity> queryList(Map<String, Object> map) {
        return customerAddressMapper.queryList(map);
    }

    @Override
    public int queryTotal(Map<String, Object> map) {
        return customerAddressMapper.queryTotal(map);
    }

    @Override
    public int save(CustomerAddressEntity customerAddress) {
        return customerAddressMapper.insertSelective(customerAddress);
    }

    @Override
    public int update(CustomerAddressEntity customerAddress) {
        return customerAddressMapper.updateByPrimaryKeySelective(customerAddress);
    }

    @Override
    public int delete(Integer caId) {
        return customerAddressMapper.deleteByPrimaryKey((long)caId);
    }

    @Override
    public int deleteBatch(Integer[] caIds) {
        return customerAddressMapper.deleteBatch(caIds);
    }
}
