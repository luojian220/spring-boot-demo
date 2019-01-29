package com.luno.softone.controller;

import com.luno.softone.annotation.SysLog;
import com.luno.softone.model.entity.SysUserEntity;
import com.luno.softone.model.entity.ThirdBindEntity;
import com.luno.softone.service.SysUserRoleService;
import com.luno.softone.service.SysUserService;
import com.luno.softone.service.ThirdBindService;
import com.luno.softone.utils.*;
import com.luno.softone.validator.Assert;
import com.luno.softone.validator.ValidatorUtils;
import com.luno.softone.validator.group.AddGroup;
import com.luno.softone.validator.group.UpdateGroup;

import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.crypto.hash.Sha256Hash;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

/**
 * 系统用户
 *
 * @author dcs
 * @email 123456
 * @date 2016年10月31日 上午10:40:10
 */
@RestController
@RequestMapping("/sys/user")
public class SysUserController extends AbstractController {
    @Autowired
    private SysUserService sysUserService;
    @Autowired
    private SysUserRoleService sysUserRoleService;
    @Autowired
    private ThirdBindService thirdBindService;
    
    
    /**
     * 微信待绑定列表
     */
    @RequestMapping("/nickList")
    @RequiresPermissions("sys:user:save")
    public R select(@RequestParam Map<String, Object> params) {
        List<ThirdBindEntity> list = thirdBindService.queryValidByNickname(null);
        if(params.get("openId") !=null){
        	 String openId=(String) params.get("openId") ;
        	 boolean isExsit=false;
        	 for(ThirdBindEntity tnesnew:list){
        		 if(openId.equals(tnesnew.getBindId())){
        			 isExsit=true;
        			 break;
        		 }
        	 }
        	 if(!isExsit){
        	 ThirdBindEntity tbe=new ThirdBindEntity();
             tbe.setWxNickname((String) params.get("wxNickname"));
             tbe.setBindId(openId);
             list.add(0,tbe);
        	 }
        }
       
        return R.ok().put("list", list);
    }
    
    /**
     * 所有用户列表
     */
    @RequestMapping("/list")
    @RequiresPermissions("sys:user:list")
    public R list(@RequestParam Map<String, Object> params) {
        //只有超级管理员，才能查看所有管理员列表
        /*if (getUserId() != Constant.SUPER_ADMIN) {
            params.put("createUserId", getUserId());
        }*/

        //查询列表数据
        Query query = new Query(params);
        List<SysUserEntity> userList = sysUserService.queryList(query);
        int total = sysUserService.queryTotal(query);

        PageUtils pageUtil = new PageUtils(userList, total, query.getLimit(), query.getPage());

        return R.ok().put("page", pageUtil);
    }

    /**
     * 获取登录的用户信息
     */
    @RequestMapping("/info")
    public R info() {
        return R.ok().put("user", getUser());
    }

    /**
     * 修改登录用户密码
     */
    @SysLog("修改密码")
    @RequestMapping("/password")
    public R password(String password, String newPassword) {
//        if(ResourceUtil.getConfigByName("sys.demo").equals("1")){
//            throw new RRException("演示环境无法修改密码！");
//        }
        Assert.isBlank(newPassword, "新密码不为能空");

        //sha256加密
        password = new Sha256Hash(password).toHex();
        //sha256加密
        newPassword = new Sha256Hash(newPassword).toHex();
        if(newPassword.equals(password)){
            return R.error("新密码与原密码不能相同");
        }

        //更新密码
        int count = sysUserService.updatePassword(getUserId(), password, newPassword);
        if (count == 0) {
            return R.error("原密码不正确");
        }

        //退出
        ShiroUtils.logout();

        return R.ok();
    }

    /**
     * 用户信息
     */
    @RequestMapping("/info/{userId}")
    @RequiresPermissions("sys:user:info")
    public R info(@PathVariable("userId") Long userId) {
        SysUserEntity user = sysUserService.queryObject(userId);

        //获取用户所属的角色列表
        List<Long> roleIdList = sysUserRoleService.queryRoleIdList(userId);
        user.setRoleIdList(roleIdList);

        return R.ok().put("user", user);
    }

    /**
     * 保存用户
     */
    @SysLog("保存用户")
    @RequestMapping("/save")
    @RequiresPermissions("sys:user:save")
    public R save(@RequestBody SysUserEntity user) {
        ValidatorUtils.validateEntity(user, AddGroup.class);

        user.setCreateUserId(getUserId());
      
        sysUserService.save(user);
        
        delByOpenId(user);
        return R.ok();
    }
	/**
	 * 绑定好的微信删除
	 * @param user
	 */
	private void delByOpenId(SysUserEntity user) {
		String openId=user.getOpenId();
        if(StringUtils.isNotEmpty(openId)){
        	thirdBindService.deleteByOpenId(openId);
        }
	}

    /**
     * 修改用户
     */
    @SysLog("修改用户")
    @RequestMapping("/update")
    @RequiresPermissions("sys:user:update")
    public R update(@RequestBody SysUserEntity user) {
        ValidatorUtils.validateEntity(user, UpdateGroup.class);

        user.setCreateUserId(getUserId());
        sysUserService.update(user);

        delByOpenId(user);
        return R.ok();
    }

    /**
     * 删除用户
     */
    @SysLog("删除用户")
    @RequestMapping("/delete")
    @RequiresPermissions("sys:user:delete")
    public R delete(@RequestBody Long[] userIds) {
        if (ArrayUtils.contains(userIds, 1L)) {
            return R.error("系统管理员不能删除");
        }

        if (ArrayUtils.contains(userIds, getUserId())) {
            return R.error("当前用户不能删除");
        }

        sysUserService.deleteBatch(userIds);

        return R.ok();
    }


    /**
     * 个人详细信息
     */
    @RequestMapping("/detail")
    @RequiresPermissions("sys:user:detail")
    public R detail() {
        SysUserEntity user = sysUserService.queryDetail(getUserId());
        return R.ok().put("user", user);
    }

    /**
     * 密码重置
     */
    @SysLog("密码重置")
    @RequestMapping("/reset")
    @RequiresPermissions("sys:user:reset")
    public R reset(@RequestBody Long[] userIds) {
        if (getUserId() != Constant.SUPER_ADMIN) {
            return R.error("只有系统管理员才有此权限");
        }

        if (ArrayUtils.contains(userIds, 1L)) {
            return R.error("系统管理员密码不能重置");
        }

        sysUserService.resetBatch(userIds);

        return R.ok();
    }

}
