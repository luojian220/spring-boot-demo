package com.luno.softone.service;



import com.luno.softone.model.entity.ThirdBindEntity;
import com.luno.softone.model.vo.QueryThirdBindVo;

import java.util.List;
import java.util.Map;

/**
 * 第三方账号绑定关系表Service接口
 *
 * @author dcs
 * @email 123456@qq.com
 * @date 2018-10-06 01:01:11
 */
public interface ThirdBindService {
    /**
     * 添加绑定账号
     * @param thirdBind
     * @return
     */
    int save(ThirdBindEntity thirdBind);
    /**
     * 根据主键更新实体
     *
     * @param tbThirdBind 实体
     * @return 更新条数
     */
    int update(ThirdBindEntity tbThirdBind);

    /**
     * 根据绑定id查询
     * @param bindId
     * @return
     */
    ThirdBindEntity queryByBindId(String bindId);
    /**
     * 根据用户id查询
     * @param userId
     * @return
     */
    ThirdBindEntity queryByUserId(Long userId);
    /**
     * 解绑
     * @param userId 用户id
     * @return
     */
    int unbindThirdBind(Long userId);
    /**
     * 查询绑定列表
     * @param map
     * @return
     */
    List<QueryThirdBindVo> queryThirdBindList(Map<String, Object> map);
    /**
     * 查询绑定列表总数
     * @param map
     * @return
     */
    int queryThirdBindTotal(Map<String, Object> map);
    /**
     * 查询有效绑定列表
     * @param nickName
     * @return
     */
    List<ThirdBindEntity> queryValidByNickname(String nickName);
    /**
     * 删除无效数据
     * @return
     */
    int deleteInvalid();
    /**
     * 删除数据
     * @return
     */
    int deleteByOpenId(String openId);
}
