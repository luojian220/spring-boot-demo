package com.luno.softone.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.GetMapping;
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
@Api(value = "IndexController ")
@RequestMapping("/")
public class IndexController {


    @ApiOperation(value = "testApi")
    @ApiImplicitParams({@ApiImplicitParam(name = "userName", value = "用户名", required = true, dataType = "String"),
    @ApiImplicitParam(name = "password", value = "密码", required = false, dataType = "String")})
    @GetMapping("/index")
    public String index(String userName, String password) {

        return "Demo 项目正在运行" + userName + password;
    }
}
