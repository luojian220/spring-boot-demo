package com.luno.softone.controller.sys;

import com.luno.softone.common.utils.PageUtils;
import com.luno.softone.common.utils.Query;
import com.luno.softone.common.utils.R;
import com.luno.softone.model.entity.SysLogEntity;
import com.luno.softone.service.SysLogService;
import com.luno.softone.utils.FileUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.IOException;
import java.util.List;
import java.util.Map;

/**
 * 系统日志Controller
 *
 * @author dcs
 * @email 123456
 * @date 2017-03-08 10:40:56
 */
@Controller
@RequestMapping("/sys/log")
public class SysLogController {
    @Autowired
    private SysLogService sysLogService;

    /**
     * 系统日志列表
     *
     * @param params 请求参数
     * @return R
     */
    @ResponseBody
    @RequestMapping("/list")
    @RequiresPermissions("sys:log:list")
    public R list(@RequestParam Map<String, Object> params) {
        //查询列表数据
        Query query = new Query(params);
        List<SysLogEntity> sysLogList = sysLogService.queryList(query);
        int total = sysLogService.queryTotal(query);

        PageUtils pageUtil = new PageUtils(sysLogList, total, query.getLimit(), query.getPage());

        return R.ok().put("page", pageUtil);
    }

    
    @RequestMapping("/downloadLog")
    public ResponseEntity<byte[]> export(String fileName, String filePath) throws IOException {
    	return FileUtils.downloadLog();
    }
}
