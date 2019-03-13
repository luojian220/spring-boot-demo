package com.luno.softone.config;

import com.luno.softone.service.SysConfigService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

/**
 * @author luojian
 * @version 1.0
 * @ClassName: MyApplicationRunner
 * @Reason:
 * @date: 2019年02月17日 15:15
 * @company:warWolf
 * @since JDK 1.8
 */
@Component
@Order(value = 1)
public class MyApplicationRunner implements ApplicationRunner {

    @Autowired
    private SysConfigService sysConfigService;

    @Override
    public void run(ApplicationArguments var1) throws Exception{
        //启动后立即执行
        System.out.println("启动完成！！！");

        String version = sysConfigService.getValue("version", "1");
        String prefix = version.substring(0, version.lastIndexOf(".") + 1);
        String suffix = version.substring(version.lastIndexOf(".") + 1);
        suffix = String.valueOf(Integer.parseInt(suffix) + 1);
        version = prefix + suffix;
        sysConfigService.updateValueByKey("version", version);
    }

}
