package com.luno.softone.utils;


import com.luno.softone.service.SysConfigService;

/**
 * 获取系统参数
 * @author dcs
 *
 */
public  final class SysConfigUtil {
	private static SysConfigService sysConfigService() {
		return SpringBeanUtil.getBean(SysConfigService.class);
	}
	/**
     * 根据key，更新value
     */
    public static void updateValueByKey(String key, String value) {
    	 sysConfigService().updateValueByKey(key, value);
    }
    /**
     * 根据key，获取配置的value值
     *
     * @param key          key
     * @param defaultValue 缺省值
     */
    public static String getValue(String key, String defaultValue) {
    	return sysConfigService().getValue(key, defaultValue);
    }
    public static String getValue(String key) {
    	return sysConfigService().getValue(key, null);
    }
}
