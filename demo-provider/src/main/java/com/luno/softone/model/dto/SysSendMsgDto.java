package com.luno.softone.model.dto;

import com.luno.softone.model.entity.SysMsgEntity;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

public class SysSendMsgDto extends SysMsgEntity {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	// 接收人员列表
	private Set<String> staffSet = new HashSet<String>();

	public Set<String> getStaffSet() {
		return staffSet;
	}

	public void addStaffId(String staffId) {
		if(staffId!=null)
		staffSet.add(staffId);
	}

	public SysSendMsgDto() {
		super();
		//未读
        this.setSmIsRead(0);
//        sysMsg.setSmPublishTime(new Date());
        this.setSmAddTime(new Date());
//        sysMsg.setSmTitle(dto.getCmrRemark());
//        sysMsg.setSmContent(getContent(dto));
        this.setSmState(1);
        //定时消息
        this.setSmType(2);
//        sysMsg.setSmStaffId(staffId);
	}
	

}
