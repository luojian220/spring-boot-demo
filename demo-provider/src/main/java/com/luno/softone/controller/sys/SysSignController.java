package com.luno.softone.controller.sys;

import com.luno.softone.common.utils.PageUtils;
import com.luno.softone.common.utils.Query;
import com.luno.softone.common.utils.R;
import com.luno.softone.controller.AbstractController;
import com.luno.softone.model.entity.SysSignEntity;
import com.luno.softone.service.SysSignService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

/**
 * 签到表Controller
 *
 * @author dcs
 * @email 123456@qq.com
 * @date 2018-10-04 18:49:59
 */
@RestController
@RequestMapping("sys/sign")
public class SysSignController extends AbstractController {
    @Autowired
    private SysSignService sysSignService;

    /**
     * 查看列表  我的签到
     */
    @RequestMapping("/list")
    @RequiresPermissions("sys:sign:list")
    public R list(@RequestParam Map<String, Object> params) {
        //查询列表数据
        params.put("staffId",getUser().getStaffId());
        // bizType 1 考勤签到
        params.put("bizType",1);
        //日期处理
        handleDateParam(params);
        Query query = new Query(params);

        List<SysSignEntity> sysSignList = sysSignService.queryList(query);
        int total = sysSignService.queryTotal(query);

        PageUtils pageUtil = new PageUtils(sysSignList, total, query.getLimit(), query.getPage());

        return R.ok().put("page", pageUtil);
    }

    /**
     * 查看列表  案件签到
     */
    @RequestMapping("/forCaseList")
    public R forCaseList(@RequestParam Map<String, Object> params) {
        //查询列表数据
        // bizType 2 案件签到
        params.put("bizType",2);
        //日期处理
        handleDateParam(params);
        Query query = new Query(params);

        List<SysSignEntity> sysSignList = sysSignService.queryList(query);
        int total = sysSignService.queryTotal(query);

        PageUtils pageUtil = new PageUtils(sysSignList, total, query.getLimit(), query.getPage());

        return R.ok().put("page", pageUtil);
    }

    /**
     * 查看信息
     */
    @RequestMapping("/info/{id}")
    @RequiresPermissions("sys:sign:info")
    public R info(@PathVariable("id") Integer id) {
        SysSignEntity sysSign = sysSignService.queryObject(id);

        return R.ok().put("sign", sysSign);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    @RequiresPermissions("sys:sign:save")
    public R save(@RequestBody SysSignEntity sysSign) {
        sysSignService.save(sysSign);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @RequiresPermissions("sys:sign:update")
    public R update(@RequestBody SysSignEntity sysSign) {
        sysSignService.update(sysSign);

        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    @RequiresPermissions("sys:sign:delete")
    public R delete(@RequestBody Integer[] ids) {
        sysSignService.deleteBatch(ids);

        return R.ok();
    }

    /**
     * 查看所有列表
     */
    @RequestMapping("/queryAll")
    public R queryAll(@RequestParam Map<String, Object> params) {

        List<SysSignEntity> list = sysSignService.queryList(params);

        return R.ok().put("list", list);
    }
}
