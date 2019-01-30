package com.luno.softone.dao;

import com.alibaba.fastjson.JSONObject;
import com.luno.softone.model.entity.City;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

/**
 * @author luojian
 * @version 1.0
 * @ClassName: CityDaoTest
 * @Reason: TODO ADD REASON(可选)
 * @date: 2019年01月28日 14:55

 * @since JDK 1.7
 */
@RunWith(SpringRunner.class)
//@ActiveProfiles(resolver = ProfilesResolver.class)
@SpringBootTest
public class CityDaoTest {

    @Autowired
    private CityDao cityDao;

    @Test
    public void cityDao_selectOne() {

        City cityCond = new City();
        cityCond.setName("Almere");
        City city = cityDao.selectOne(cityCond);
        System.out.println("city : " + JSONObject.toJSONString(city));
    }


    @Test
    public void cityDao_getById() {

        City city = cityDao.getById(18);
        System.out.println("city : " + JSONObject.toJSONString(city));
    }

}
