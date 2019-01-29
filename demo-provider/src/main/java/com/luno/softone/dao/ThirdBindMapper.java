package com.luno.softone.dao;


import com.luno.softone.model.entity.ThirdBindEntity;
import com.luno.softone.model.vo.QueryThirdBindVo;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * 第三方账号绑定关系表Dao
 *
 * @author xuyang
 * @email 295640759@qq.com
 * @date 2018-10-06 01:01:11
 */
public interface ThirdBindMapper extends BaseDao<ThirdBindEntity> {
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

    int updateByPrimaryKeySelective(ThirdBindEntity tbThirdBind);
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
     * @param startDate 开始时间
     * @return
     */
    List<ThirdBindEntity> queryValidByNickname(@Param("nickName") String nickName, @Param("startDate") Date startDate);
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
