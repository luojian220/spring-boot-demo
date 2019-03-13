package com.luno.softone.controller.sys;

import com.luno.softone.common.exception.RRException;
import com.luno.softone.common.utils.PageUtils;
import com.luno.softone.common.utils.Query;
import com.luno.softone.common.utils.R;
import com.luno.softone.controller.AbstractController;
import com.luno.softone.model.entity.SysStaffEntity;
import com.luno.softone.model.entity.SysUserEntity;
import com.luno.softone.service.SysDeptService;
import com.luno.softone.service.SysStaffService;
import com.luno.softone.utils.ConstantsUtil;
import com.luno.softone.utils.FileUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;
import java.util.Map;

/**
 * 员工表Controller
 *
 * @author dcs
 * @email 123456@qq.com
 * @date 2018-09-28 21:13:48
 */
@RestController
@RequestMapping("sys/staff")
public class SysStaffController extends AbstractController {
    @Autowired
    private SysStaffService sysStaffService;
    @Autowired
    private SysDeptService sysDeptService;

    /**
     * 查看列表
     */
    @RequestMapping("/list")
    @RequiresPermissions("sys:staff:list")
    public R list(@RequestParam Map<String, Object> params) {
        if (params.get("tag") != null && "true".equals(params.get("tag"))) {
            params.put("status", null);
        }

        //查询列表数据
        Query query = new Query(params);

        List<SysStaffEntity> sysStaffList = sysStaffService.list(query);
        int total = sysStaffService.queryTotal(query);

        PageUtils pageUtil = new PageUtils(sysStaffList, total, query.getLimit(), query.getPage());

        return R.ok().put("page", pageUtil);
    }

    /**
     * 查看信息
     */
    @RequestMapping("/info/{staffId}")
    @RequiresPermissions("sys:staff:info")
    public R info(@PathVariable("staffId") String staffId) {
        SysStaffEntity staff = sysStaffService.queryObject(staffId);
        /*if (staff != null && !StringUtils.isEmpty(staff.getPicture()))
            staff.setPicUrl(FileUtils.link(staff.getPicture()));*/
        return R.ok().put("staff", staff);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    @RequiresPermissions("sys:staff:save")
    public R save(@RequestBody SysStaffEntity sysStaff) {
        sysStaffService.save(sysStaff);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @RequiresPermissions("sys:staff:update")
    public R update(@RequestBody SysStaffEntity sysStaff) {
        sysStaffService.update(sysStaff);

        return R.ok();
    }

    /**
     * 逻辑删除
     */
    @RequestMapping("/delete")
    @RequiresPermissions("sys:staff:delete")
    public R delete(@RequestBody String[] staffIds) {
        sysStaffService.deleteBatch(staffIds);

        return R.ok();
    }

    /**
     * 员工选择下拉列表
     */
    @RequestMapping("/queryList")
    @RequiresPermissions("sys:staff:queryList")
    public R queryAll(@RequestParam Map<String, Object> params) {

        List<SysStaffEntity> list = sysStaffService.queryList(params);

        return R.ok().put("list", list);
    }

    /**
     * 工程部、技术部
     * 查看所有列表
     */
    @RequestMapping("/queryListAll")
    public R queryListAll(@RequestParam Map<String, Object> params) {
        List<SysStaffEntity> list = sysStaffService.queryListAll(params);
        return R.ok().put("list", list);
    }

    @RequestMapping("/queryListAllSale")
    public R queryListAllSale(@RequestParam Map<String, Object> params) {
    	SysUserEntity sysUserEntity =getUser();
    	//临时写死
    	if (sysUserEntity.getDeptName().startsWith("销售")) {
    		params.put("deptFilter", sysDeptService.getSubDeptIdList(getDeptId()));
        }else{
        	//销售部门一级code为6
        	params.put("deptFilter", ConstantsUtil.saleDepId+","+ConstantsUtil.adminDepId);
        }
        List<SysStaffEntity> list = sysStaffService.queryListAllByDep(params);
        return R.ok().put("list", list);
    }
   
    /**
     * 上传文件
     *
     * @param file 文件
     * @return R
     * @throws Exception 异常
     */
    @RequestMapping("/upload")
    public R upload(@RequestParam("file") MultipartFile[] file, @RequestParam("staffId") String staffId) throws Exception {
        if (StringUtils.isEmpty(file)) {
            throw new RRException("上传文件不能为空");
        }

        if (StringUtils.isEmpty(staffId)) {
            throw new RRException("员工编号不能为空");
        }

        //上传文件
        String url = FileUtils.upload(file, staffId);
        String link = FileUtils.link(url);
        R r = new R();
        r.put("url", url);
        r.put("link", link);
        return r;
    }


    /**
     * 生成员工编号
     *
     * @return
     */
    @RequestMapping("/getStaffId")
    public R getStaffId() {
        String staffId = sysStaffService.getStaffId();
        return R.ok().put("staffId", staffId);
    }


    /**
     * 添加或更新
     */
    @RequestMapping("/saveOrUpdate")
    @RequiresPermissions("sys:staff:save")
    public R saveOrUpdate(@RequestBody SysStaffEntity sysStaff) {
        sysStaffService.saveOrUpdate(sysStaff);
        return R.ok();
    }


    /**
     * 离职
     */
    @RequestMapping("/quit")
    @RequiresPermissions("sys:staff:quit")
    public R quit(@RequestBody String[] staffIds) {
        if (StringUtils.isEmpty(staffIds)) {
            throw new RRException("员工编号不能为空");
        }
        sysStaffService.quitBatch(staffIds);

        return R.ok();
    }


    /**
     * 查询调度员工
     * @return
     */
    @RequestMapping("/rptStaffList")
    public R rptQueryList() {
        List<SysStaffEntity> list = sysStaffService.rptStaffList();
        return R.ok().put("list", list);
    }

}
