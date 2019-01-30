package com.luno.softone.shiro;

import com.luno.softone.dao.SysMenuDao;
import com.luno.softone.dao.SysUserDao;
import com.luno.softone.model.entity.SysMenuEntity;
import com.luno.softone.model.entity.SysUserEntity;
import com.luno.softone.utils.Constant;
import com.luno.softone.utils.RedisService;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.*;

/**
 * 认证
 *
 * @author dcs
 * @date 2017年11月19日 上午9:49:19
 */
@Component
public class UserRealm extends AuthorizingRealm {
    @Autowired
    private SysUserDao sysUserDao;
    @Autowired
    private SysMenuDao sysMenuDao;

    @Autowired
    private RedisService redisService;

    /**
     * 授权(验证权限时调用)
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        SysUserEntity user = (SysUserEntity) principals.getPrimaryPrincipal();
        Long userId = user.getUserId();

        // TODO: 2019/1/28 redis
        //List<String> permsList = (List<String>) J2CacheUtils.get(Constant.PERMS_LIST + userId);
        List<String> permsList = (List<String>)redisService.get(Constant.PERMS_LIST + userId);
        //用户权限列表
        Set<String> permsSet = new HashSet<String>();
        if (permsList != null && permsList.size() != 0) {
        	//刷吧，没搞明白一级二级缓存的区别在哪，一级失效，二级也失效了，为什么？???
            // TODO: 2019/1/28 redis 
        	//J2CacheUtils.put(Constant.PERMS_LIST + user.getUserId(), permsList);
            redisService.set(Constant.PERMS_LIST + user.getUserId(),permsList);
            for (String perms : permsList) {
                if (StringUtils.isBlank(perms)) {
                    continue;
                }
                permsSet.addAll(Arrays.asList(perms.trim().split(",")));
            }
        }

        SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
        info.setStringPermissions(permsSet);
        return info;
    }

    /**
     * 认证(登录时调用)
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(
            AuthenticationToken token) throws AuthenticationException {
        String username = (String) token.getPrincipal();
        String password = new String((char[]) token.getCredentials());

        //查询用户信息
        SysUserEntity user = sysUserDao.queryByUserName(username);

        //账号不存在
        if (user == null) {
            throw new UnknownAccountException("账号或密码不正确");
        }

        //密码错误
        if (!password.equals(user.getPassword())) {
            throw new IncorrectCredentialsException("账号或密码不正确");
        }

        //账号锁定
        if (user.getStatus() == 0) {
            throw new LockedAccountException("账号已被锁定,请联系管理员");
        }

        // 把当前用户放入到session中
        Subject subject = SecurityUtils.getSubject();
        Session session = subject.getSession(true);
        session.setAttribute(Constant.CURRENT_USER, user);

        List<String> permsList;

        //系统管理员，拥有最高权限
        if (Constant.SUPER_ADMIN == user.getUserId()) {
            List<SysMenuEntity> menuList = sysMenuDao.queryList(new HashMap<String, Object>());
            permsList = new ArrayList<String>(menuList.size());
            for (SysMenuEntity menu : menuList) {
                permsList.add(menu.getPerms());
            }
        } else {
            permsList = sysUserDao.queryAllPerms(user.getUserId());
        }
        // TODO: 2019/1/29 redis
        //J2CacheUtils.put(Constant.PERMS_LIST + user.getUserId(), permsList);
        redisService.set(Constant.PERMS_LIST + user.getUserId(),permsList);

        SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(user, password, getName());
        return info;
    }

}
