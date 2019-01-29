package com.luno.softone.utils;


import com.luno.softone.dao.SysMsgDao;
import com.luno.softone.model.dto.SysSendMsgDto;
import com.luno.softone.model.entity.SysMsgEntity;
import com.luno.softone.model.entity.SysStaffEntity;
import com.luno.softone.service.SysStaffService;
import com.luno.softone.service.impl.SysMsgServiceImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public abstract class SendMsgParent {
    @Autowired
    private SysMsgDao sysMsgDao;
//    @Autowired
//    private SysStaffService sysStaffService;
    //@Autowired
    //private SysMsgServiceImpl apiSysUserService;

	Logger logger = LoggerFactory.getLogger(getClass());
	public SendMsgParent() {
		super();
	}
	private String templateId="Zt2zo4vp7-KrIGYWR4r9LBGJ7fjfIGruqhVLDvWQbVM";
	
	public void setTemplateId(String templateId) {
		this.templateId = templateId;
	}

	public void sheduleExecutor() {
		logger.info("========消息发送开始========"+getTitle());
		 List<SysSendMsgDto> list =getMsgList();
		 for(SysSendMsgDto ssmd:list){
			 for (String str : ssmd.getStaffSet()) {  
				 ssmd.setSmStaffId(str);
				 ssmd.setSmTitle(getTitle());
				 sendMsg(ssmd);
			}
		 }
		logger.info("========消息发送完成============"+getTitle());
	}

	/**
	 * 发送消息
	 *
	 * @param dto
	 */
	protected void sendMsg(SysSendMsgDto dto) {
	        try {
	            if (StringUtils.isNotEmpty(dto.getSmContent())) {
	                sysMsgDao.save(dto);
	                sendWeixin(dto);
	            }
	        } catch (Exception e) {
	            logger.error(e.getMessage());
	        }
	    }

	private void sendWeixin(SysMsgEntity sysMsg) {
//		String templateId="Zt2zo4vp7-KrIGYWR4r9LBGJ7fjfIGruqhVLDvWQbVM";
		Map<String,Map<String,String>> map=new HashMap<String,Map<String,String>>();
	        // Map<String,String> subMap1=new HashMap<String,String>();
		Map<String,String> subMap2=new HashMap<String,String>();
		//subMap1.put("value", "标题");
		subMap2.put("value", sysMsg.getSmContent());
	        // map.put("keyword1", subMap1);
		map.put("keyword2", subMap2);

		//apiSysUserService.sendWeiXinMsg(sysMsg.getSmStaffId(), templateId,map);
	}
	
    public abstract String getTitle();
    public abstract  List<SysSendMsgDto> getMsgList();
    protected void append(StringBuffer content,String val) {
		if(StringUtils.isNotEmpty(val)){
			content.append(val);
		}
	}
    protected String trimNull(String val) {
		if(StringUtils.isNotEmpty(val)){
			return val.trim();
		}else {
			return "";
		}
	}
    protected String getStaffId(String staffId) {
    	if(staffId==null){
    		return null;
    	}
    	SysStaffEntity sf= null;//sysStaffService.queryObject(staffId);
    	if(sf!=null){
    		return sf.getName();
    	}else{
    		return null;
    	}
	}
    
}