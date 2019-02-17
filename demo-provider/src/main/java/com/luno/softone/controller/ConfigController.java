package com.luno.softone.controller;

import com.luno.softone.service.SysConfigService;
import com.luno.softone.utils.Constant;
import com.luno.softone.utils.R;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

/**
 * @author luojian
 * @version 1.0
 * @ClassName: ConfigController
 * @Reason: TODO ADD REASON(可选)
 * @date: 2019年02月17日 15:29
 * @company:warWolf
 * @since JDK 1.8
 */
@RestController
@RequestMapping("/sys/config")
public class ConfigController {

    @Autowired
    private SysConfigService sysConfigService;

    /**
     * 获取登录的用户信息
     */
    @RequestMapping("/info")
    public R version() {

        Map<String,Object> map = new HashMap<>();

        map.put("version", getVersion());
        map.put("systemName", getSystemName());

        Subject subject = SecurityUtils.getSubject();
        Session session = subject.getSession(true);
        session.setAttribute("jsVersion", getVersion());
        return R.ok(map);
    }



    /**
     *
     * @return
     */
    private String getVersion() {
        String version = null;
        try {
            version = sysConfigService.getValue("version", "1");
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
        return version;
    }

    private String getSystemName() {
        String systemName = null;
        try {
            systemName = sysConfigService.getValue("systemName", "系统名称");
        } catch (NumberFormatException e) {
            systemName="";
        }
        return systemName;
    }


}
