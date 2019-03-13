package com.luno.softone.dao;

import com.luno.softone.utils.RedisService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.Date;

/**
 * @author luojian
 * @version 1.0
 * @ClassName: RedisServiceTest
 * @Reason:
 * @date: 2019年01月30日 14:23

 * @since JDK 1.7
 */
@RunWith(SpringRunner.class)
//@ActiveProfiles(resolver = ProfilesResolver.class)
@SpringBootTest
public class RedisServiceTest {

    @Autowired
    private RedisService redisService;

    @Test
    public void redisService_set() {

        redisService.set("test_id",111);
        redisService.set("test_date",new Date());
    }


    @Test
    public void redisService_get() {

        Object test_id = redisService.get("test_id");
        Object test_date =redisService.get("test_date");

        System.out.println("test_id :" + test_id);
        System.out.println("test_date :" + test_date);
    }

    @Test
    public void redisService_del() {

        redisService.remove("test_id");
        redisService.remove("test_date");

    }
}
