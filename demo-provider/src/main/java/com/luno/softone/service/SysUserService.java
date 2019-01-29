package com.luno.softone.service;

import com.luno.softone.model.entity.SysUserEntity;
import com.luno.softone.model.entity.UserWindowDto;
import com.luno.softone.page.Page;

import java.util.List;
import java.util.Map;


/**
 * 系统用户
 *
 * @author dcs
 * @email 123456
 * @date 2016年9月18日 上午9:43:39
 */
public interface SysUserService {

    /**
     * 查询用户的所有权限
     *
     * @param userId 用户ID
     */
    List<String> queryAllPerms(Long userId);

    /**
     * 查询用户的所有菜单ID
     */
    List<Long> queryAllMenuId(Long userId);

    /**
     * 查询用户的所有微信菜单ID
     */
    List<Long> queryAllWeixinMenuId(Long userId);

    /**
     * 根据用户名，查询系统用户
     */
    SysUserEntity queryByUserName(String username);

    /**
     * 根据用户ID，查询用户
     *
     * @param userId
     * @return
     */
    SysUserEntity queryObject(Long userId);

    /**
     * 查询用户列表
     */
    List<SysUserEntity> queryList(Map<String, Object> map);

    /**
     * 查询总数
     */
    int queryTotal(Map<String, Object> map);

    /**
     * 保存用户
     */
    void save(SysUserEntity user);

    /**
     * 修改用户
     */
    void update(SysUserEntity user);

    /**
     * 删除用户
     */
    void deleteBatch(Long[] userIds);

    /**
     * 修改密码
     *
     * @param userId      用户ID
     * @param password    原密码
     * @param newPassword 新密码
     */
    int updatePassword(Long userId, String password, String newPassword);

    /**
     * 根据条件分页查询
     * @param userEntity
     * @param pageNum
     * @return
     */
    Page<UserWindowDto> findPage(UserWindowDto userEntity, int pageNum);

    /**
     * 根据openId查询用户信息
     * @param openId
     * @return
     */
    SysUserEntity queryByOpenId(String openId);

    /**
     * 微信绑定接口
     * @param userId
     * @param openId
     * @param wxNickname
     * @return
     */
    boolean weiXinBind(Long userId, String openId, String wxNickname);
    /**
     * 微信解绑接口
     * @param userId
     * @return
     */
    boolean weiXinUnBind(Long userId);

    /**
     * 密码重置
     */
    void resetBatch(Long[] userIds);

    /**
     * 查询个人信息
     *
     * @param userId
     * @return
     */
    SysUserEntity queryDetail(Long userId);
}
