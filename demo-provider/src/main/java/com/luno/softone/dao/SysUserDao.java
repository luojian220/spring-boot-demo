package com.luno.softone.dao;

import com.luno.softone.model.entity.SysUserEntity;
import com.luno.softone.model.entity.UserWindowDto;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * 系统用户
 *
 * @author dcs
 * @email 123456
 * @date 2016年9月18日 上午9:34:11
 */
public interface SysUserDao extends BaseDao<SysUserEntity> {

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
     * 修改密码
     */
    int updatePassword(Map<String, Object> map);
    /**
     * 根据实体类查询
     * @param userWindowDto
     * @return
     */
    List<UserWindowDto> queryListByBean(UserWindowDto userWindowDto);
    /**
     * 根据openId查询用户信息
     * @param openId
     * @return
     */
    SysUserEntity queryByOpenId(String openId);

    /**
     * 更新openid
     * @param userId
     * @param openId
     * @param wxNickname
     * @return
     */
    int updateOpenId(@Param("userId") Long userId, @Param("openId") String openId, @Param("wxNickname") String wxNickname);

    /**
     *密码重置
     */
    int resetBatch(@Param("userId") Long[] userId, @Param("password") String password);

    /**
     * 查询个人信息
     * @param userId
     * @return
     */
    SysUserEntity queryDetail(@Param("userId") Long userId);

    /**
     * 批量离职
     * @param id
     * @return
     */
    int quitBatch(Object[] id);
}
