package com.luno.softone.generate.utils;

import org.apache.velocity.VelocityContext;
import org.apache.velocity.app.Velocity;
import org.junit.Assert;
import org.junit.Test;

import java.util.HashMap;
import java.util.Map;

/**
 * @author luojian
 * @version 1.0
 * @ClassName: GenUtilsTest
 * @Reason:
 * @date: 2019年03月25日 13:41
 * @since JDK 1.7
 */
public class GenUtilsTest {


    @Test
    public void generateFromTemple() {
        String template = "变量key1:${key1},变量key2:${key2}";
        Map<String,Object> map = new HashMap<>();
        map.put("key1","jj");
        map.put("key2","kk");
        String result = GenUtils.generateFromTemplate(template,map);
        System.out.println(result);
        Assert.assertTrue(result.contains("jj"));
    }


}
