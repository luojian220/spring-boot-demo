package com.luno.softone.config;

import com.luno.softone.model.entity.SysConfigEntity;
import com.luno.softone.service.SysConfigService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;
import org.thymeleaf.spring5.view.ThymeleafViewResolver;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

/**
 * @author luojian
 * @version 1.0
 * @ClassName: CommonVarConfigRunner
 * @Reason: 视图公共变量赋值
 * @date: 2019年03月17日 11:02
 * @company:warWolf
 * @since JDK 1.8
 */
@Component
@Order(value = 2)
public class CommonVarConfigRunner implements ApplicationRunner {

    private static final Logger log = LoggerFactory.getLogger(CommonVarConfigRunner.class);

    @Resource(name="thymeleafViewResolver")
    ThymeleafViewResolver thymeleafViewResolver;

    @Autowired
    private SysConfigService sysConfigService;

    @Override
    public void run(ApplicationArguments args) throws Exception {

        log.info("视图全局静态变量--统一赋值");
        if (thymeleafViewResolver != null) {
            Map<String, Object> vars = new HashMap<>();
            vars.put("jsVersion", getVersion());
            vars.put("systemName", getSystemName());
            thymeleafViewResolver.setStaticVariables(vars);
        }

    }

    /**
     *
     * @return
     */
    private String getVersion() {
        String version = null;
        try {
            version = sysConfigService.getValue("version", "1");
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
        return version;
    }

    private String getSystemName() {
        String systemName = null;
        try {
            systemName = sysConfigService.getValue("systemName", "系统名称");
        } catch (NumberFormatException e) {
            systemName="";
        }
        return systemName;
    }
}
