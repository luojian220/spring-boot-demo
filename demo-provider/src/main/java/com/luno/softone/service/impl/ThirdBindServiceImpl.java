package com.luno.softone.service.impl;

import com.luno.softone.dao.ThirdBindMapper;
import com.luno.softone.model.entity.ThirdBindEntity;
import com.luno.softone.model.vo.QueryThirdBindVo;
import com.luno.softone.service.ThirdBindService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Map;


/**
 * 第三方账号绑定关系表Service实现类
 *
 * @author dcs
 * @email 123456@qq.com
 * @date 2018-10-06 01:01:11
 */
@Service("thirdBindService")
public class ThirdBindServiceImpl implements ThirdBindService {
    private static long TIME = 30 * 60 * 1000;
    @Autowired
    private ThirdBindMapper thirdBindMapper;


    public ThirdBindMapper getApiThirdBindMapper() {
        return thirdBindMapper;
    }

    public void setThirdBindMapper(ThirdBindMapper thirdBindMapper) {
        this.thirdBindMapper = thirdBindMapper;
    }

    @Override
    public int save(ThirdBindEntity thirdBind) {
        ThirdBindEntity tb = queryByBindId(thirdBind.getBindId());
        if(tb != null){
            thirdBind.setId(tb.getId());
            return update(thirdBind);
        }else {
            return thirdBindMapper.save(thirdBind);
        }
    }

    @Override
    public int update(ThirdBindEntity tbThirdBind) {
        return thirdBindMapper.updateByPrimaryKeySelective(tbThirdBind);
    }

    @Override
    public ThirdBindEntity queryByBindId(String bindId) {
        return thirdBindMapper.queryByBindId(bindId);
    }

    @Override
    public ThirdBindEntity queryByUserId(Long userId) {
        return thirdBindMapper.queryByUserId(userId);
    }

    @Override
    public int unbindThirdBind(Long userId) {
        return thirdBindMapper.unbindThirdBind(userId);
    }

    @Override
    public List<QueryThirdBindVo> queryThirdBindList(Map<String, Object> map) {
        return thirdBindMapper.queryThirdBindList(map);
    }

    @Override
    public int queryThirdBindTotal(Map<String, Object> map) {
        return thirdBindMapper.queryThirdBindTotal(map);
    }

    @Override
    public List<ThirdBindEntity> queryValidByNickname(String nickName) {
        return thirdBindMapper.queryValidByNickname(nickName,new Date(System.currentTimeMillis() - TIME));
    }

    @Override
    public int deleteInvalid() {
        return thirdBindMapper.deleteInvalid();
    }

    @Override
    public int deleteByOpenId(String openId) {
        return thirdBindMapper.deleteByOpenId(openId);
    }
}
