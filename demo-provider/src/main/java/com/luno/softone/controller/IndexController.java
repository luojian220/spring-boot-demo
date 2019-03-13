package com.luno.softone.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author luojian
 * @version 1.0
 * @ClassName: IndexController
 * @Reason:
 * @date: 2018年11月13日 14:20
 * @since JDK 1.8
 */
@RestController
public class IndexController {


    @RequestMapping("/index")
    public String index() {


        return "Demo 项目正在运行";
    }
}
