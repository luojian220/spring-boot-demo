package com.luno.softone.dao;



import com.luno.softone.common.dao.BaseMapper;
import com.luno.softone.model.entity.TbWeixinFormIdEntity;
import com.luno.softone.model.entity.example.TbWeixinFormIdExample;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

/**
 * 微信发消息formid收集信息表Dao
 *
 * @author xuyang
 * @email 295640759@qq.com
 * @date 2018-11-17 23:14:39
 */
public interface TbWeixinFormIdMapper extends BaseMapper<TbWeixinFormIdEntity, TbWeixinFormIdExample> {

    int deleteByFormId(String formId);
    /**
     * 查询有效微信fromid
     * @param staffId 员工编号
     * @param minDate 最小时间
     * @return
     */
    List<TbWeixinFormIdEntity> queryValidFormId(@Param("staffId") String staffId, @Param("minDate") Date minDate);
}
