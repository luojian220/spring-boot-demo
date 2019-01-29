package com.luno.softone.service;


import com.luno.softone.model.dto.CaseDispatchDto;
import com.luno.softone.model.dto.CaseModifyRecordDto;
import com.luno.softone.model.entity.CaseDispatchEntity;

import java.util.List;
import java.util.Map;

/**
 * 案件调度表Service接口
 *
 * @author dcs
 * @email 123456@qq.com
 * @date 2018-10-05 13:46:02
 */
public interface CaseDispatchService {

    /**
     * 根据主键查询实体
     *
     * @param id 主键
     * @return 实体
     */
    CaseDispatchEntity queryObject(Integer cdId);


    /**
     * 根据主键查询实体
     *
     * @param id 主键
     * @return 实体
     */
    CaseDispatchEntity queryObjectByNcId(Integer ncId, String status);

    /**
     * 分页查询
     *
     * @param map 参数
     * @return list
     */
    List<CaseDispatchEntity> queryList(Map<String, Object> map);

    /**
     * 分页统计总数
     *
     * @param map 参数
     * @return 总数
     */
    int queryTotal(Map<String, Object> map);

    /**
     * 保存实体
     *
     * @param caseDispatch 实体
     * @return 保存条数
     */
    int save(CaseDispatchDto caseDispatch);

    /**
     * 根据主键更新实体
     *
     * @param caseDispatch 实体
     * @return 更新条数
     */
    int update(CaseDispatchEntity caseDispatch);

    /**
     * 取消调度
     *
     * @param modifyRecordDto
     * @return
     */
    int updateDispatchCancel(CaseModifyRecordDto modifyRecordDto);

    /**
     * 根据主键删除
     *
     * @param cdId
     * @return 删除条数
     */
    int delete(Integer cdId);

    /**
     * 根据主键批量删除
     *
     * @param cdIds
     * @return 删除条数
     */
    int deleteBatch(Integer[] cdIds);

    /**
     * 更改案件状态为 ， 调度退回
     * @param ncId
     * @return
     */
    int dispatchBack(Map<String, Object> map);

    /**
     * 任务完成
     * @param modifyRecordDto
     * @return
     */
    int taskComplete(CaseModifyRecordDto modifyRecordDto);

    /**
     * 任务完成-转单
     * @param modifyRecordDto
     * @return
     */
    int taskCompleteAndNewCase(CaseModifyRecordDto modifyRecordDto);

    /**
     * 外勤退回
     * @param modifyRecordDto
     */
    int outsideCancel(CaseModifyRecordDto modifyRecordDto);

    int transService(CaseModifyRecordDto modifyRecordDto);
}
