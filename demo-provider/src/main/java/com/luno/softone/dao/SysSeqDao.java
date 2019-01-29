package com.luno.softone.dao;


/**
 * 獲取序列號
 * 所有的業務都可以在這裏獲取
 * @author dcs
 *
 */
public interface SysSeqDao  {

	// 员工自增长编号
    int getStaffSeq();


    // 员工自增长编号
    int getCustomerSeq();


    // 员工自增长编号
    int getNewCaseSeq();
}
