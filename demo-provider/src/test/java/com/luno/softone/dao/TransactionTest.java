package com.luno.softone.dao;

import com.luno.softone.service.impl.TransactionTestService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

/**
 * @author luojian
 * @version 1.0
 * @ClassName: TransactionTest
 * @Reason:
 * @date: 2020年04月01日 17:49
 */
@RunWith(SpringRunner.class)
//@ActiveProfiles(resolver = ProfilesResolver.class)
@SpringBootTest
public class TransactionTest {

    @Autowired
    private TransactionTestService transactionTestService;

    @Test
    public void test() {
        /**
         * 测试嵌套子事务，（独立事务）
         */
        transactionTestService.testTranaction();
        System.out.println("执行完成");
    }



}
