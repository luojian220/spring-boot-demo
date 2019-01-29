package com.luno.softone.utils;

import java.util.HashMap;
import java.util.Map;

@SuppressWarnings("serial")
public class ConstantsUtil {

    /**消息发布状态**/
   
	public static final Map<String,String> smsTateMap  = new HashMap<String, String>(){{
        put("0","未发布");
        put("1","已发布");
    }};

    /**消息类型**/
    public static final Map<String,String> smsTypeMap  = new HashMap<String, String>(){{
        put("0","普通消息");
        put("1","只读消息");
        put("2","定时消息");
    }};

    /**是否已读**/
    public static final Map<String,String> smsIsreadMap  = new HashMap<String, String>(){{
        put("0","否");
        put("1","是");
    }};

    /**考勤类型**/
    public static final Map<String,String> signTypeMap  = new HashMap<String, String>(){{
        put("sign in","签到");
        put("sign out","签退");
    }};

    // 24	技术工程师
    // 25	销售员
    public static final long saleRoleId = 25L;
    public static final long techRoleId = 24L;
    //销售主管
    public static final long saleManagerRoleId = 27L;
    //销售部门一级code为6
    public static final long saleDepId = 6L;
  //管理部门一级code为1
    public static final long adminDepId = 1L;
    
//    //调度
//    public static final long dispatchRoleId = 29L;
//    //调度主管
//    public static final long dispatchManagerRoleId = 8L;
//    //销售经理
//    public static final long saleManagerRoleId = 27L;
//    //技术主管
//    public static final long techManagerRoleId = 28L;
    //消息模板id
    public static final String msgTemplateIdKey="msgTemplateId";
    //报案消息参数key
    public static final String caseMsgLastTimeKey="caseMsgLastTime";
    public static final String caseMsgTemplateKey="caseMsgTemplate";
    public static final String caseMsgRoles="caseMsgRoles";
    //结案消息参数key
    public static final String compMsgLastTimeKey="compMsgLastTime";
    public static final String compMsgTemplateKey="compMsgTemplateKey";
    public static final String compMsgRoles="compMsgRoles";
    //调度消息参数key
    public static final String dispMsgLastTimeKey="dispMsgLastTime";
    public static final String dispMsgTemplateKey="dispMsgTemplateKey";
    public static final String dispMsgRoles="dispMsgRoles";
    //客户跟踪消息参数key
    public static final String custLogMsgDays="custLogMsgDays";
    public static final String custLogMsgTemplate="custLogMsgTemplate";
    public static final String custLogMsgRoles="custLogMsgRoles";
    //合同到期消息参数key
    public static final String contractExpirationMonths="contractExpirationMonths";
    public static final String contractExpirationTemplate="contractExpirationTemplate";
    public static final String contractExpirationRoles="contractExpirationRoles";
    //未处理提醒消息参数key
    public static final String delayDoCaseMsgDays="delayDoCaseMsgDays";
    public static final String delayDoCaseMsgTemplate="delayDoCaseMsgTemplate";
    public static final String delayDoCaseMsgRoles="delayDoCaseMsgRoles";
    
    //未调度处理提醒消息参数key
    public static final String delayDispDoCaseMsgDays="delayDispDoCaseMsgDays";
    public static final String delayDispDoCaseMsgTemplate="delayDispDoCaseMsgTemplate";
    public static final String delayDispDoCaseMsgRoles="delayDispDoCaseMsgRoles";
  //客户跟踪消息参数key
    public static final String traceMsgLastTime="traceMsgLastTime";
    public static final String traceMsgTemplate="traceMsgTemplate";
    public static final String traceMsgRoles="traceMsgRoles";
    
    
    
    public static final String wxAppId="wx.appid";
    public static final String wxSecret="wx.secret";
    //微信地图秘钥key
    public static final String wxMapKey="wx.mapKey";

    
    public static final String fileUtilsHost="fileUtils.host";
    public static final String fileUtilsUploadFileDirectory="fileUtils.uploadFileDirectory";
    public static final String fileUtilsUrlDirectory="fileUtilsUrlDirectory";
    /**
     * 小程序登录token缓存
     */
//    public static Map<String,String> loginAccessTokenCache = new HashMap<>();
    /**
     * 微信绑定审核中用户id
     */
//    public static long WeiXinBindApproveUserId = 0L;
    /**
     * 模拟微信fromid
     */
    public static String mockFormId = "the formId is a mock one";
    /**
     * 微信登录token缓存key
     */
    public static final String preWxLoginToken = "wx.loginToken%s";
}
