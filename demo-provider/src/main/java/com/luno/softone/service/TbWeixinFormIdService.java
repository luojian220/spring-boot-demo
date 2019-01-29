package com.luno.softone.service;



import com.luno.softone.model.entity.TbWeixinFormIdEntity;

import java.util.Date;
import java.util.List;

/**
 * 微信发消息formid收集信息表Service接口
 *
 * @author dcs
 * @email 123456@qq.com
 * @date 2018-11-17 23:14:39
 */
public interface TbWeixinFormIdService {

    /**
     * 保存实体
     *
     * @param tbWeixinFormId 实体
     * @return 保存条数
     */
    int save(TbWeixinFormIdEntity tbWeixinFormId);

    /**
     * 根据主键删除
     *
     * @param formId
     * @return 删除条数
     */
    int deleteByFormId(String formId);

    /**
     * 查询有效微信fromid
     * @param staffId 员工编号
     * @param minDate 最小时间
     * @return
     */
    List<TbWeixinFormIdEntity> queryValidFormId(String staffId, Date minDate);
}
