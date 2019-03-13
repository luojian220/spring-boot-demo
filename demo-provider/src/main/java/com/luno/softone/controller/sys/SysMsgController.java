package com.luno.softone.controller.sys;

import com.luno.softone.common.utils.PageUtils;
import com.luno.softone.common.utils.Query;
import com.luno.softone.common.utils.R;
import com.luno.softone.controller.AbstractController;
import com.luno.softone.model.entity.SysMsgEntity;
import com.luno.softone.service.SysMsgService;
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
 * 消息表Controller
 *
 * @author dcs
 * @email 123456@qq.com
 * @date 2018-10-04 11:49:36
 */
@RestController
@RequestMapping("sys/msg")
public class SysMsgController extends AbstractController {
    @Autowired
    private SysMsgService sysMsgService;

    /**
     * 查看列表
     */
    @RequestMapping("/list")
    @RequiresPermissions("sys:msg:list")
    public R list(@RequestParam Map<String, Object> params) {
        //查询列表数据
        params.put("smStaffId",getUser().getStaffId());
        Query query = new Query(params);

        List<SysMsgEntity> sysMsgList = sysMsgService.queryList(query);
        int total = sysMsgService.queryTotal(query);

        PageUtils pageUtil = new PageUtils(sysMsgList, total, query.getLimit(), query.getPage());

        return R.ok().put("page", pageUtil);
    }

    /**
     * 查看信息
     */
    @RequestMapping("/info/{smId}")
    @RequiresPermissions("sys:msg:info")
    public R info(@PathVariable("smId") Integer smId) {
        SysMsgEntity msg = sysMsgService.queryObject(smId);

        return R.ok().put("msgInfo", msg);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    @RequiresPermissions("sys:msg:save")
    public R save(@RequestBody SysMsgEntity sysMsg) {
        sysMsgService.save(sysMsg);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @RequiresPermissions("sys:msg:update")
    public R update(@RequestBody SysMsgEntity sysMsg) {
        sysMsgService.update(sysMsg);

        return R.ok();
    }

    /**
     * 删除（逻辑删除）
     */
    @RequestMapping("/delete")
    @RequiresPermissions("sys:msg:delete")
    public R delete(@RequestBody Integer[] smIds) {
        sysMsgService.updateBatch(smIds);
        return R.ok();
    }

    /**
     * 查看所有列表
     */
    @RequestMapping("/queryAll")
    public R queryAll(@RequestParam Map<String, Object> params) {

        List<SysMsgEntity> list = sysMsgService.queryList(params);

        return R.ok().put("list", list);
    }
}
