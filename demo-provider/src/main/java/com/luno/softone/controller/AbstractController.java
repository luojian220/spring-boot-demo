package com.luno.softone.controller;


import com.luno.softone.model.entity.SysUserEntity;
import com.luno.softone.utils.ShiroUtils;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.Date;
import java.util.Map;

/**
 * Controller公共组件
 *
 * @author dcs
 * @email 123456
 * @date 2016年11月9日 下午9:42:26
 */
public abstract class AbstractController {
    protected Logger logger = LoggerFactory.getLogger(getClass());

    protected SysUserEntity getUser() {
        return ShiroUtils.getUserEntity();
    }

    protected Long getUserId() {
        return getUser().getUserId();
    }

    protected Long getDeptId() {
        return getUser().getDeptId();
    }
    protected String getDeptName() {
        return getUser().getDeptName();
    }
    /**
     * 处理日期
     * @param params
     */
    protected void handleDateParam(Map<String,Object> params) {

        // Mon Oct 01 2018 00:00:00 GMT+0800 (CST)
        String beginStr = (String) params.get("beginTime");
        String endStr = (String) params.get("endTime");
        if (StringUtils.isNotEmpty(beginStr)) {
            Date beginTime = new Date(beginStr);
            params.put("beginTime",beginTime);
        } else {
            params.remove("beginTime");
        }
        if (StringUtils.isNotEmpty(endStr)) {
            Date endTime = new Date(endStr);
            params.put("endTime",endTime);
        } else {
            params.remove("endTime");
        }
    }
}
