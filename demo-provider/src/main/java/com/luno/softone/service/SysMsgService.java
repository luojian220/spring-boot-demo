package com.luno.softone.service;

import com.luno.softone.model.entity.SysMsgEntity;

import java.util.List;
import java.util.Map;

/**
 * 消息表Service接口
 *
 * @author dcs
 * @email 123456@qq.com
 * @date 2018-10-04 11:49:36
 */
public interface SysMsgService {

    /**
     * 根据主键查询实体
     *
     * @param smId 主键
     * @return 实体
     */
    SysMsgEntity queryObject(Integer smId);

    /**
     * 分页查询
     *
     * @param map 参数
     * @return list
     */
    List<SysMsgEntity> queryList(Map<String, Object> map);

    /**
     * 分页统计总数
     *
     * @param map 参数
     * @return 总数
     */
    int queryTotal(Map<String, Object> map);

    /**
     * 保存实体
     *
     * @param sysMsg 实体
     * @return 保存条数
     */
    int save(SysMsgEntity sysMsg);

    /**
     * 根据主键更新实体
     *
     * @param sysMsg 实体
     * @return 更新条数
     */
    int update(SysMsgEntity sysMsg);

    /**
     * 根据主键删除
     *
     * @param smId
     * @return 删除条数
     */
    int delete(Integer smId);
    int deleteOverTime();
    /**
     * 根据主键批量删除
     *
     * @param smIds
     * @return 删除条数
     */
    int deleteBatch(Integer[] smIds);

    /**
     * 批量更新
     * @param smIds
     * @return
     */
    int updateBatch(Integer[] smIds);

    /**
     * 发送微信消息
     * @param staffId 员工编号
     * @param templateId 模板消息id
     * @param data 消息内容，格式：{"keyword1": {"value": "标题"},"keyword2": {"value": "消息内容"},...}
     * @return
     */
    boolean sendWeiXinMsg(String staffId, String templateId, Map<String, Map<String, String>> data);
}
