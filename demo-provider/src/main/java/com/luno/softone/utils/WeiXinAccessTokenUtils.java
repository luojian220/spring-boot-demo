package com.luno.softone.utils;

import com.alibaba.fastjson.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

import javax.annotation.PostConstruct;

/**
 * @ Description：微信accessToken工具类
 * @ Author：luchuanyou
 * @ CreateDate：2018/11/18
 * @Version: 1.0
 */
@Component
public class WeiXinAccessTokenUtils {
    private static Logger logger = LoggerFactory.getLogger(WeiXinAccessTokenUtils.class);

    @Autowired
    private RestTemplate restTemplate;

    private static WeiXinAccessTokenUtils weiXinAccessTokenUtils;

    @PostConstruct
    public void init() {
        weiXinAccessTokenUtils = this;
        weiXinAccessTokenUtils.restTemplate = this.restTemplate;
    }


    //微信AccessToken
    public static String WEIXIN_ACCESS_TOKEN = "";
    //微信token有效期，单位：秒
    public static int EXPIRE_IN = 7200;
    //微信token获取时间，单位：秒
    public static long WEIXIN_ACCESS_TOKEN_TIME = System.currentTimeMillis();
    //更新时间，单位：秒
    public static int REMAIN_TIME = 5 * 60;
    //微信formid有效期
    public static long WEIXIN_FORMID_TIME = 7 * 24 * 60 * 60 * 1000;

    /**
     * 获取微信accessToken
     * @return
     */
    public static String getWeiXinAccessToken(){
        if (StringUtils.isNullOrEmpty(WEIXIN_ACCESS_TOKEN)) {
            //获取微信accessToken
            resetWeinXinAccessToken();
        }
        long time = System.currentTimeMillis() / 1000 - WEIXIN_ACCESS_TOKEN_TIME;
        if((EXPIRE_IN - time) < REMAIN_TIME){
            logger.info("微信accessToken已过期,WEIXIN_ACCESS_TOKEN_TIME:"+WEIXIN_ACCESS_TOKEN_TIME+",time:"+time);
            //获取微信accessToken
            resetWeinXinAccessToken();
        }
        return WEIXIN_ACCESS_TOKEN;
    }

    /**
     * 获取微信accessToken
     * @return
     */
    private static void resetWeinXinAccessToken(){
        JSONObject json = weiXinAccessTokenUtils.restTemplate.getForObject(getWeiXinAccessTokenHttpsUrl(), JSONObject.class);
        logger.info("获取微信accessToken返回结果,resetWeinXinAccessToken result:"+json);
        //设置token
        WEIXIN_ACCESS_TOKEN = (String) json.get("access_token");
        WEIXIN_ACCESS_TOKEN_TIME = (int) json.get("expires_in");
        WEIXIN_ACCESS_TOKEN_TIME = System.currentTimeMillis() / 1000;
    }

    //拼接微信accessToken请求参数
    public static String getWeiXinAccessTokenHttpsUrl() {
        return String.format(ResourceUtil.getConfigByName("wx.accessTokenhttps"),
        		SysConfigUtil.getValue(ConstantsUtil.wxAppId),
        		SysConfigUtil.getValue(ConstantsUtil.wxSecret));
    }

    /**
     * 获取微信发消息地址
     * @return
     */
    public static String getWeiXinSendMsgHttpsUrl() {
        return String.format(ResourceUtil.getConfigByName("wx.sendMsghttps"),
                getWeiXinAccessToken());
    }
}
