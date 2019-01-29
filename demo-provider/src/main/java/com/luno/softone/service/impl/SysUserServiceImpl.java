package com.luno.softone.service.impl;

import com.luno.softone.dao.SysUserDao;
import com.luno.softone.model.entity.SysUserEntity;
import com.luno.softone.model.entity.UserWindowDto;
import com.luno.softone.page.Page;
import com.luno.softone.page.PageHelper;
import com.luno.softone.service.SysRoleService;
import com.luno.softone.service.SysUserRoleService;
import com.luno.softone.service.SysUserService;

import com.luno.softone.utils.Constant;
import com.luno.softone.utils.SykjException;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.crypto.hash.Sha256Hash;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * 系统用户
 *
 * @author dcs
 * @email 123456
 * @date 2016年12月18日 上午9:46:09
 */
@Service("sysUserService")
public class SysUserServiceImpl implements SysUserService {
    private Logger logger = LoggerFactory.getLogger(getClass());

    @Autowired
    private SysUserDao sysUserDao;
    @Autowired
    private SysUserRoleService sysUserRoleService;
    @Autowired
    private SysRoleService sysRoleService;

    @Override
    public List<String> queryAllPerms(Long userId) {
        return sysUserDao.queryAllPerms(userId);
    }

    @Override
    public List<Long> queryAllMenuId(Long userId) {
        return sysUserDao.queryAllMenuId(userId);
    }

    @Override
    public List<Long> queryAllWeixinMenuId(Long userId) {
        return sysUserDao.queryAllWeixinMenuId(userId);
    }

    @Override
    public SysUserEntity queryByUserName(String username) {
        return sysUserDao.queryByUserName(username);
    }

    @Override
    public SysUserEntity queryObject(Long userId) {
        SysUserEntity sysUserEntity = sysUserDao.queryObject(userId);
        if (sysUserEntity != null && !StringUtils.isEmpty(sysUserEntity.getPicture())) {
            // TODO: 2019/1/29 头像图片取法修改
            //sysUserEntity.setPicUrl(FileUtils.link(sysUserEntity.getPicture()));
        }
        return sysUserEntity;

    }

    @Override
    public List<SysUserEntity> queryList(Map<String, Object> map) {
        return sysUserDao.queryList(map);
    }

    @Override
    public int queryTotal(Map<String, Object> map) {
        return sysUserDao.queryTotal(map);
    }

    @Override
    @Transactional
    public void save(SysUserEntity user) {
        user.setCreateTime(new Date());
        //sha256加密
        user.setPassword(new Sha256Hash(Constant.DEFAULT_PASS_WORD).toHex());
        sysUserDao.save(user);

        //检查角色是否越权
//        checkRole(user);

        //保存用户与角色关系
        sysUserRoleService.saveOrUpdate(user.getUserId(), user.getRoleIdList());
    }

    @Override
    @Transactional
    public void update(SysUserEntity user) {
        if (StringUtils.isBlank(user.getPassword())) {
            user.setPassword(new Sha256Hash(Constant.DEFAULT_PASS_WORD).toHex());
        } else {
            user.setPassword(new Sha256Hash(user.getPassword()).toHex());
        }
        sysUserDao.update(user);

        //检查角色是否越权
//        checkRole(user);

        //保存用户与角色关系
        sysUserRoleService.saveOrUpdate(user.getUserId(), user.getRoleIdList());
    }

    @Override
    @Transactional
    public void deleteBatch(Long[] userId) {
        sysUserDao.deleteBatch(userId);
    }

    @Override
    public int updatePassword(Long userId, String password, String newPassword) {
        Map<String, Object> map = new HashMap<>();
        map.put("userId", userId);
        map.put("password", password);
        map.put("newPassword", newPassword);
        return sysUserDao.updatePassword(map);
    }

    /**
     * 检查角色是否越权
     */
//    private void checkRole(SysUserEntity user) {
//        //如果不是超级管理员，则需要判断用户的角色是否自己创建
//        if (user.getCreateUserId() == Constant.SUPER_ADMIN) {
//            return;
//        }
//
//        //查询用户创建的角色列表
//        List<Long> roleIdList = sysRoleService.queryRoleIdList(user.getCreateUserId());
//
//        //判断是否越权
//        if (!roleIdList.containsAll(user.getRoleIdList())) {
//            throw new RRException("新增用户所选角色，不是本人创建");
//        }
//    }


    @Override
    public Page<UserWindowDto> findPage(UserWindowDto userWindowDto, int pageNum) {
        PageHelper.startPage(pageNum, Constant.pageSize);
        sysUserDao.queryListByBean(userWindowDto);
        return PageHelper.endPage();
    }

    @Override
    public SysUserEntity queryByOpenId(String openId) {
        return sysUserDao.queryByOpenId(openId);
    }

    @Override
    public boolean weiXinBind(Long userId, String openId, String wxNickname) {
        try {
            //查询openid是否已绑定
            SysUserEntity user = queryByOpenId(openId);
            if (user != null) {
                logger.error("微信已被绑定,weiXinBind queryByOpenId is not null userId:" + userId + ",openId:" + openId);
                throw new SykjException(1, "微信已被绑定");
            }
            sysUserDao.updateOpenId(userId, openId, wxNickname);
            return true;
        } catch (SykjException e) {
            throw new SykjException(e.getCode(), e.getMsg());
        } catch (Exception e) {
            logger.error("微信绑定系统异常,weiXinBind Exception userId:" + userId + ",openId:" + openId);
            throw new SykjException(1, "微信绑定系统异常");
        }
    }

    @Override
    public boolean weiXinUnBind(Long userId) {
        try {
            sysUserDao.updateOpenId(userId, "", "");
            return true;
        } catch (Exception e) {
            logger.error("微信解绑系统异常,weiXinUnBind Exception userId:" + userId);
            throw new SykjException(1, "微信解绑系统异常");
        }
    }

    @Override
    @Transactional
    public void resetBatch(Long[] userId) {
        //sha256加密
        String password = new Sha256Hash(Constant.DEFAULT_PASS_WORD).toHex();
        sysUserDao.resetBatch(userId, password);
    }

    @Override
    public SysUserEntity queryDetail(Long userId) {
        SysUserEntity sysUserEntity = sysUserDao.queryDetail(userId);
        if (sysUserEntity != null && !StringUtils.isEmpty(sysUserEntity.getPicture())) {
//            sysUserEntity.setPicUrl(FileUtils.link(sysUserEntity.getPicture()));
        }
        return sysUserEntity;

    }
}
