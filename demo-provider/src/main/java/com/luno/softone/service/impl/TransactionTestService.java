package com.luno.softone.service.impl;

import com.luno.softone.dao.SysLogDao;
import com.luno.softone.model.entity.SysConfigEntity;
import com.luno.softone.model.entity.SysLogEntity;
import com.luno.softone.service.SysConfigService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;

/**
 * @author luojian
 * @version 1.0
 * @ClassName: TransactionTestService
 * @Reason:
 * @date: 2020年04月01日 17:42
 */
@Service("transactionTestService")
public class TransactionTestService {

    @Autowired
    private SysLogDao sysLogDao;
    @Autowired
    private SysConfigService sysConfigService;

    /**
     * 测试嵌套子事务，（独立事务）
     */
    @Transactional(propagation = Propagation.REQUIRED)
    public void testTranaction() {

        SysConfigEntity configEntity = new SysConfigEntity();
        configEntity.setKey("testKey");
        configEntity.setRemark("test");
        configEntity.setValue("1111111");
        try {
            sysConfigService.save(configEntity);
            System.out.println("子事物处理完成");
        } catch (Exception e) {
            System.out.println("执行异常");
            e.printStackTrace();
        }
        SysLogEntity logEntity = new SysLogEntity();
        logEntity.setIp("111");
        logEntity.setCreateDate(new Date());
        logEntity.setMethod("methodA");
        logEntity.setOperation("aaaaabbbb");
        logEntity.setUsername("uuuuu");
        sysLogDao.save(logEntity);
        int r = 10 / 0;
    }
}
