package com.luno.softone.controller.sys;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author luojian
 * @version 1.0
 * @ClassName: RequestDistributeController
 * @Reason: 视图解析-两级页面
 * @date: 2019年01月29日 11:21

 * @since JDK 1.7
 */
@Controller
public class SysPageController {

    private static final Logger loger = LoggerFactory.getLogger(SysPageController.class);

    private static final String view_suffix = ".html";
    private static final String view_prefix = "sys/";


    @RequestMapping(value = "/{pagePath}/{pageName}.html",method = RequestMethod.GET)
    public String twoLevelPage(@PathVariable String pagePath,@PathVariable String pageName) {

        loger.info("收到页面跳转请求：{}:{}" ,pagePath ,pageName);
        //验证是否已经登录，及是否有权限

        return pagePath + "/" + pageName;
    }

}
