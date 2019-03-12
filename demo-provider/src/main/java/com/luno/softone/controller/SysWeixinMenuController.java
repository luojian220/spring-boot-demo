package com.luno.softone.controller;

import com.luno.softone.model.entity.SysWeixinMenuEntity;
import com.luno.softone.service.SysWeixinMenuService;
import com.luno.softone.common.utils.Constant;
import com.luno.softone.common.utils.R;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;

/**
 * 微信菜单表Controller
 *
 * @author dcs
 * @email 123456@qq.com
 * @date 2018-12-01 16:01:28
 */
@RestController
@RequestMapping("/sys/wxmenu")
public class SysWeixinMenuController extends AbstractController {
    @Autowired
    private SysWeixinMenuService sysWeixinMenuService;

    /**
     * 角色授权菜单
     */
    @RequestMapping("/perms")
    @RequiresPermissions("sys:wxmenu:perms")
    public R perms() {
        //查询列表数据
        List<SysWeixinMenuEntity> wxMenuIdList = null;

        //只有超级管理员，才能查看所有管理员列表
        if (getUserId() == Constant.SUPER_ADMIN) {
            wxMenuIdList = sysWeixinMenuService.queryList(new HashMap<String, Object>());
        } else {
            wxMenuIdList = sysWeixinMenuService.queryUserList(getUserId());
        }
        return R.ok().put("wxMenuIdList", wxMenuIdList);
    }

}
