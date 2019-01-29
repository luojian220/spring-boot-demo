package com.luno.softone.service.impl;

import com.luno.softone.dao.SysSignDao;
import com.luno.softone.model.entity.SysSignEntity;
import com.luno.softone.service.SysSignService;
import com.luno.softone.utils.SykjException;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;


/**
 * 签到表Service实现类
 *
 * @author dcs
 * @email 123456@qq.com
 * @date 2018-10-04 18:49:59
 */
@Service("sysSignService")
public class SysSignServiceImpl implements SysSignService {
    @Autowired
    private SysSignDao sysSignDao;

    @Override
    public SysSignEntity queryObject(Integer id) {
        return sysSignDao.queryObject(id);
    }

    @Override
    public List<SysSignEntity> queryList(Map<String, Object> map) {
        //处理日期
        setDateParam(map);
        return sysSignDao.queryList(map);
    }

    /**
     * 处理参数结束日期
     * @param map
     */
    private void setDateParam(Map<String,Object> map) {
        // 如果有日期参数， 结束日期加1
        if (map.get("endTime") != null) {
            try {
                Date endTime = (Date) map.get("endTime");
                endTime = org.apache.commons.lang3.time.DateUtils.addDays(endTime, 1);
                Calendar calendar = Calendar.getInstance();
                calendar.setTime(endTime);
                calendar.set(Calendar.HOUR_OF_DAY, 0);
                calendar.set(Calendar.MINUTE, 0);
                calendar.set(Calendar.SECOND, 0);
                map.put("endTime", calendar.getTime());
            } catch (Exception e) {
                map.remove("endTime");
            }
        }
        if (map.get("beginTime") != null) {
            try{
                Date beginTime = (Date) map.get("beginTime");
                Calendar calendar = Calendar.getInstance();
                calendar.setTime(beginTime);
                calendar.set(Calendar.HOUR_OF_DAY,0);
                calendar.set(Calendar.MINUTE,0);
                calendar.set(Calendar.SECOND,0);
                map.put("beginTime",calendar.getTime());
            } catch (Exception e) {
                map.remove("beginTime");
            }
        }
    }

    @Override
    public int queryTotal(Map<String, Object> map) {
        return sysSignDao.queryTotal(map);
    }

    @Override
    public int save(SysSignEntity sysSign) throws SykjException {

        sysSign.setSignTime(new Date());
        // 设置业务类型 biz_type 签到类型 1 考勤签到   2 案件签到
        if (StringUtils.isNotBlank(sysSign.getNcNumber())) {
            sysSign.setBizType(2);
            Map<String,Object> map = new HashMap<>();
            map.put("staffId",sysSign.getStaffId());
            map.put("bizType",2);
            map.put("ncNumber",sysSign.getNcNumber());
            map.put("type",sysSign.getType());
            List<SysSignEntity> list = sysSignDao.queryCurrentDayKaoQinList(map);
            if (list != null && list.size() > 0 ) {
                throw new RuntimeException("不允许重复签到");
            }
        } else {
            sysSign.setBizType(1);
        }
        return sysSignDao.save(sysSign);
    }

    @Override
    public int update(SysSignEntity sysSign) {
        return sysSignDao.update(sysSign);
    }

    @Override
    public int delete(Integer id) {
        return sysSignDao.delete(id);
    }

    @Override
    public int deleteBatch(Integer[] ids) {
        return sysSignDao.deleteBatch(ids);
    }

    @Override
    public List<SysSignEntity> queryCurrentDayKaoQinList(String staffId) {
        Map<String,Object> map = new HashMap<>();
        map.put("staffId",staffId);
        map.put("bizType","1");
        return sysSignDao.queryCurrentDayKaoQinList(map);
    }
}
