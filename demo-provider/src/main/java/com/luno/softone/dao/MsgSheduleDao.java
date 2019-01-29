package com.luno.softone.dao;

import com.luno.softone.model.entity.CaseModifyRecordEntity;
import com.luno.softone.model.entity.NewCaseEntity;
import com.luno.softone.model.entity.SysStaffEntity;

import java.util.List;
import java.util.Map;

public interface MsgSheduleDao{

    /**
     * 查询当天调度案件
     * @return
     */
    List<CaseModifyRecordEntity> queryList(Map<String, Object> map);

    /**
     * 获取销售id
     * @param ncId
     * @return
     */
//    MsgSheduleCustomerDto queryMark(Integer ncId);

    /**
     * 更新cmrMsgId
     * @param recordEntity
     * @return
     */
//    int updateByNcId(CaseModifyRecordEntity recordEntity);

    /**
     * 查询技术人员
     * @param cdNcId
     * @return
     */
//    DispatchDto queryDis(Integer cdNcId);

    /**
     * 获取技术主管员工编号
     * @return
     */
    List<SysStaffEntity>  queryCto(long techmanagerroleid);
    List<SysStaffEntity>  queryStaffIdList(String[] roleIds);
    List<SysStaffEntity>  queryStaffIdList(List<String> roleIds);
    List<CaseModifyRecordEntity>  queryDelayList();
    List<NewCaseEntity>  queryDelayDispList();
    
}
