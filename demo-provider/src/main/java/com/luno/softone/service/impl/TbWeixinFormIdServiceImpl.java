package com.luno.softone.service.impl;

import com.luno.softone.dao.TbWeixinFormIdMapper;
import com.luno.softone.model.entity.TbWeixinFormIdEntity;
import com.luno.softone.service.TbWeixinFormIdService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;


/**
 * 微信发消息formid收集信息表Service实现类
 *
 * @author dcs
 * @email 123456@qq.com
 * @date 2018-11-17 23:14:39
 */
@Service("tbWeixinFormIdService")
public class TbWeixinFormIdServiceImpl implements TbWeixinFormIdService {
    @Autowired
    private TbWeixinFormIdMapper tbWeixinFormIdMapper;


    @Override
    public int save(TbWeixinFormIdEntity tbWeixinFormId) {
        return tbWeixinFormIdMapper.insertSelective(tbWeixinFormId);
    }

    @Override
    public int deleteByFormId(String formId) {
        return tbWeixinFormIdMapper.deleteByFormId(formId);
    }

    @Override
    public List<TbWeixinFormIdEntity> queryValidFormId(String staffId, Date minDate) {
        return tbWeixinFormIdMapper.queryValidFormId(staffId,minDate);
    }
}
