package com.luno.softone.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.luno.softone.dao.SysMsgDao;
import com.luno.softone.model.entity.SysMsgEntity;
import com.luno.softone.model.entity.TbWeixinFormIdEntity;
import com.luno.softone.service.SysMsgService;
import com.luno.softone.service.TbWeixinFormIdService;
import com.luno.softone.utils.WeiXinAccessTokenUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * 消息表Service实现类
 *
 * @author dcs
 * @email 123456@qq.com
 * @date 2018-10-04 11:49:36
 */
@Service("sysMsgService")
public class SysMsgServiceImpl implements SysMsgService {
    private Logger logger = LoggerFactory.getLogger(getClass());
    @Autowired
    private SysMsgDao sysMsgDao;
    @Autowired
    TbWeixinFormIdService tbWeixinFormIdService;
    @Autowired
    private RestTemplate restTemplate;

    @Override
    public SysMsgEntity queryObject(Integer smId) {
        SysMsgEntity sysMsg = sysMsgDao.queryObject(smId);
        if (sysMsg.getSmIsRead() == 0) {
            sysMsg.setSmIsRead(1);
            sysMsg.setSmReadTime(new Date());
            sysMsgDao.update(sysMsg);
        }
        return sysMsg;
    }

    @Override
    public List<SysMsgEntity> queryList(Map<String, Object> map) {
        return sysMsgDao.queryList(map);
    }

    @Override
    public int queryTotal(Map<String, Object> map) {
        return sysMsgDao.queryTotal(map);
    }

    @Override
    public int save(SysMsgEntity sysMsg) {
        return sysMsgDao.save(sysMsg);
    }

    @Override
    public int update(SysMsgEntity sysMsg) {
        return sysMsgDao.update(sysMsg);
    }

    @Override
    public int delete(Integer smId) {
        return sysMsgDao.delete(smId);
    }

    @Override
    public int deleteBatch(Integer[] smIds) {
        return sysMsgDao.deleteBatch(smIds);
    }

    @Override
    public int updateBatch(Integer[] smIds) {
        return sysMsgDao.updateBatch(smIds);
    }

    @Override
    public boolean sendWeiXinMsg(String staffId, String templateId, Map<String, Map<String, String>> data) {
        try {
            logger.info("微信发消息请求参数,sendWeiXinMsg request params staffId:"+staffId+",templateId:"+templateId+",data:"+data);

            List<TbWeixinFormIdEntity> formIdList = tbWeixinFormIdService.queryValidFormId(staffId, new Date(System.currentTimeMillis() - WeiXinAccessTokenUtils.WEIXIN_FORMID_TIME));
            if(formIdList == null || formIdList.size() == 0){
                logger.info("查询有效formId为空,queryValidFormId is null staffId:"+staffId);
                return false;
            }
            String formId = formIdList.get(0).getFormId();
            String openId = formIdList.get(0).getOpenId();

            Map<String,Object> requestMap = new HashMap<>();
            requestMap.put("touser",openId);
            requestMap.put("template_id",templateId);
            requestMap.put("page","pages/index/index");
            requestMap.put("form_id",formId);
            requestMap.put("data",data);
            requestMap.put("emphasis_keyword","keyword1.DATA");

            String url = WeiXinAccessTokenUtils.getWeiXinSendMsgHttpsUrl();
            logger.info("微信发消息请求参数,sendWeiXinMsg request params url:"+url+",requestMap:"+requestMap);
            JSONObject res = restTemplate.postForObject(url, requestMap, JSONObject.class);
            logger.info("微信发消息返回结果,sendWeiXinMsg result:"+res);
            if(res.getInteger("errcode") == 0){
                //删除formid
                tbWeixinFormIdService.deleteByFormId(formId);
                return true;
            }else if(res.getInteger("errcode") == 41028 || res.getInteger("errcode") == 41029){//form_id不正确或已被使用
                //删除formid
                tbWeixinFormIdService.deleteByFormId(formId);
            }
            return false;
        } catch (Exception e) {
            logger.error("微信发消息系统异常,sendWeiXinMsg Exception staffId:"+staffId+",templateId:"+templateId+",data:"+data,e);
        }
        return false;
    }

	@Override
	public int deleteOverTime() {
		sysMsgDao.updateReadOverTime();
		return sysMsgDao.deleteOverTime();
	}
}
