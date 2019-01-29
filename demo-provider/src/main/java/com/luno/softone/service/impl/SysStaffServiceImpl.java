package com.luno.softone.service.impl;

import com.luno.softone.dao.SysSeqDao;
import com.luno.softone.dao.SysStaffDao;
import com.luno.softone.dao.SysUserDao;
import com.luno.softone.model.entity.SysStaffEntity;
import com.luno.softone.service.SysStaffService;
import com.luno.softone.utils.CodeNumUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Map;


/**
 * 员工表Service实现类
 *
 * @author dcs
 * @email 123456@qq.com
 * @date 2018-09-28 21:13:48
 */
@Service("sysStaffService")
public class SysStaffServiceImpl implements SysStaffService {
    @Autowired
    private SysStaffDao sysStaffDao;
    @Autowired
    private SysSeqDao sysSeqDao;
    @Autowired
    private SysUserDao sysUserDao;

    @Override
    public SysStaffEntity queryObject(String staffId) {
        return sysStaffDao.queryObject(staffId);
    }

    @Override
    public List<SysStaffEntity> queryList(Map<String, Object> map) {
        return sysStaffDao.queryList(map);
    }

    @Override
    public int queryTotal(Map<String, Object> map) {
        return sysStaffDao.queryTotal(map);
    }

    @Override
    public int save(SysStaffEntity sysStaff) {
        //sysStaff.setStaffId(CodeNumUtils.GetId(sysSeqDao.getStaffSeq(), "YS"));
        sysStaff.setCreateTime(new Date());
        return sysStaffDao.save(sysStaff);
    }

    @Override
    public int update(SysStaffEntity sysStaff) {
        return sysStaffDao.update(sysStaff);
    }

    @Override
    public int delete(String staffId) {
        return sysStaffDao.delete(staffId);
    }

    @Override
    public void deleteBatch(String[] staffIds) {
        //员工逻辑删除
         sysStaffDao.deleteBatch(staffIds);
        //用户禁用
        sysUserDao.quitBatch(staffIds);
    }

    @Override
    public List<SysStaffEntity> queryListAll(Map<String, Object> map) {

        return sysStaffDao.queryListAll(map);
    }
    @Override
    public List<SysStaffEntity> queryListAllByDep(Map<String, Object> map) {
        return sysStaffDao.queryListAllByDep(map);
    }
    
    
    @Override
    public List<SysStaffEntity> list(Map<String, Object> map) {

        return sysStaffDao.list(map);
    }

    @Override
    public String getStaffId() {
        return CodeNumUtils.GetId(sysSeqDao.getStaffSeq(), "YS");
    }

    @Override
    public int saveOrUpdate(SysStaffEntity sysStaff) {
        sysStaff.setCreateTime(new Date());
        sysStaff.setStatus("1");
        return sysStaffDao.saveOrUpdate(sysStaff);
    }

    @Override
    public void quitBatch(String[] staffIds){
        //员工离职
        sysStaffDao.quitBatch(staffIds);
        //用户禁用
        sysUserDao.quitBatch(staffIds);

    }

   @Override
    public List<SysStaffEntity> rptStaffList(){
        return sysStaffDao.rptStaffList();
    }
}
