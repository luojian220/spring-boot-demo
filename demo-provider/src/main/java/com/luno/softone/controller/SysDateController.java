package com.luno.softone.controller;

import com.luno.softone.utils.DateUtil;
import com.luno.softone.common.utils.R;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 系统用户
 *
 * @author dcs
 * @email 123456
 * @date 2016年10月31日 上午10:40:10
 */
@RestController
@RequestMapping("/sys/date")
public class SysDateController extends AbstractController {
   
    @RequestMapping("/getworktime")
    public R select() {
    	String time = DateUtil.getCurrentWorkTime();
        return R.ok().put("time", time);
    }
}
