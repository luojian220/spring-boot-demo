package com.luno.softone.service.impl;


import com.luno.softone.common.utils.DateUtils;
import com.luno.softone.common.utils.StringUtils;
import com.luno.softone.dao.CustomerMapper;
import com.luno.softone.dao.SysSeqDao;
import com.luno.softone.model.entity.CustomerEntity;
import com.luno.softone.model.entity.CustomerShortEntity;
import com.luno.softone.service.CustomerService;
import com.luno.softone.service.SysUserRoleService;
import com.luno.softone.utils.CodeNumUtils;
import com.luno.softone.utils.ConstantsUtil;
import com.luno.softone.utils.PinyinUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * Service实现类
 *
 * @author dcs
 * @email 123456@qq.com
 * @date 2018-09-28 21:09:04
 */
@Service("customerService")
public class CustomerServiceImpl implements CustomerService {
    @Autowired
    private CustomerMapper customerMapper;

    @Autowired
    private SysSeqDao sysSeqDao;

    @Autowired
    private SysUserRoleService sysUserRoleService;

    @Override
    public CustomerEntity queryObject(Integer cuId) {
        return customerMapper.selectByPrimaryKey((long)cuId);
    }

    @Override
    public List<CustomerEntity> queryList(Map<String, Object> map) {

        // map 参数必须包含： currentEmpId  currentUserId 两个key
        // 判断当前用户是否有全部数据权限，若有全部权限 authorize == 'pass'；若不是authorize == 'require' 验证部分权限
        doAuthorizeCheck(map);
        // cuIsVip 传入空时，处理下
        if (map.containsKey("cuIsVip")) {
            Object object = map.get("cuIsVip");
            if (StringUtils.isNullOrEmpty(object)) {
                map.remove("cuIsVip");
            }
        }
        return customerMapper.queryList(map);
    }

    /**
     * 权限验证处理，当前用户是否在配置角色中
     * @param map
     */
    private void doAuthorizeCheck(Map<String, Object> map) {

        boolean vipCustomerManage = false;
        if (map.get("vipCustomerManage") != null ) {
            vipCustomerManage = Boolean.valueOf(String.valueOf(map.get("vipCustomerManage")));
        }
        if (map.get("currentUserId") != null && !vipCustomerManage) {
//            String currentEmpId = String.valueOf(map.get("currentEmpId"));
            long currentUserId = (long) map.get("currentUserId");
            //判断当前用户是否在指定角色中
            List<Long> roleIdList = sysUserRoleService.queryRoleIdList(currentUserId);
            if (roleIdList.contains(ConstantsUtil.saleRoleId)) {
                map.put("authorize","require");
                return ;
            }else  if (roleIdList.contains(ConstantsUtil.saleManagerRoleId)) {
            	map.put("deptFilter", map.get("deplist"));
            }
        }
        map.put("authorize","pass");
    }

    @Override
    public int queryTotal(Map<String, Object> map) {
        return customerMapper.queryTotal(map);
    }
    @Override
    public int queryTraceTotal(Map<String, Object> map) {
        return customerMapper.queryTraceTotal(map);
    }

    @Override
    public int save(CustomerEntity customer) {


        customer.setCuAddTime(new Date());

        customer.setCuNumber(getCuNumber());
        //拼音全拼  /简拼
        customer.setCuSimplePyName(PinyinUtil.ToFirstChar(customer.getCuName()).toUpperCase());
        customer.setCuPyName(PinyinUtil.ToPinyin(customer.getCuName()));
        return customerMapper.insertSelective(customer);
    }

    private String getCuNumber() {
        String prefix = DateUtils.timeToStr(new Date().getTime(),"yyMMdd");
        return CodeNumUtils.GetId(sysSeqDao.getCustomerSeq(), "YS".concat(prefix),4);
    }

    @Override
    public int update(CustomerEntity customer) {
        return customerMapper.updateByPrimaryKeySelective(customer);
    }

    @Override
    public int delete(Integer cuId) {
        return customerMapper.deleteByPrimaryKey((long)cuId);
    }

    @Override
    public int deleteBatch(Integer[] cuIds) {
        return customerMapper.deleteBatch(cuIds);
    }

	@Override
    public List<CustomerShortEntity> queryHelpList(Map<String, Object> map) {

        // map 参数必须包含： currentEmpId  currentUserId 两个key
        // 判断当前用户是否有全部数据权限，若有全部权限 authorize == 'pass'；若不是authorize == 'require' 验证部分权限
        doAuthorizeCheck(map);
        // cuIsVip 传入空时，处理下
        if (map.containsKey("cuIsVip")) {
            Object object = map.get("cuIsVip");
            if (StringUtils.isNullOrEmpty(object)) {
                map.remove("cuIsVip");
            }
        }
        return customerMapper.queryHelpList(map);
    }

    @Override
    public int insertBatch(List<CustomerEntity> list) {

        for (CustomerEntity item : list) {
            item.setCuNumber(getCuNumber());
            //拼音全拼  /简拼
            item.setCuSimplePyName(PinyinUtil.ToFirstChar(item.getCuName()).toUpperCase());
            item.setCuPyName(PinyinUtil.ToPinyin(item.getCuName()));
            item.setCuState("0");
        }
        return customerMapper.insertBatch(list);
    }

	@Override
	public List<CustomerEntity> queryTraceList(Map<String, Object> map) {
		   // map 参数必须包含： currentEmpId  currentUserId 两个key
        // 判断当前用户是否有全部数据权限，若有全部权限 authorize == 'pass'；若不是authorize == 'require' 验证部分权限
        doAuthorizeCheck(map);
        // cuIsVip 传入空时，处理下
        if (map.containsKey("cuIsVip")) {
            Object object = map.get("cuIsVip");
            if (StringUtils.isNullOrEmpty(object)) {
                map.remove("cuIsVip");
            }
        }
        return customerMapper.queryTraceList(map);
	}
}
