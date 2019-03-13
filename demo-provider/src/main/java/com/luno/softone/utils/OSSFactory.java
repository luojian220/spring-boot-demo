package com.luno.softone.utils;


import com.luno.softone.common.oss.AliyunCloudStorageService;
import com.luno.softone.common.oss.CloudStorageConfig;
import com.luno.softone.common.oss.CloudStorageService;
import com.luno.softone.common.oss.QcloudCloudStorageService;
import com.luno.softone.common.oss.QiniuCloudStorageService;
import com.luno.softone.common.utils.Constant;
import com.luno.softone.common.utils.SpringContextUtils;
import com.luno.softone.service.SysConfigService;

/**
 * 文件上传Factory
 *
 * @author dcs
 * @email 123456
 * @date 2017-03-26 10:18
 */
public final class OSSFactory {
    private static SysConfigService sysConfigService;

    static {
        OSSFactory.sysConfigService = (SysConfigService) SpringContextUtils.getBean("sysConfigService");
    }

    public static CloudStorageService build() {
        //获取云存储配置信息
        CloudStorageConfig config = sysConfigService.getConfigObject(Constant.CLOUD_STORAGE_CONFIG_KEY, CloudStorageConfig.class);

        if (config.getType() == Constant.CloudService.QINIU.getValue()) {
            return new QiniuCloudStorageService(config);
        } else if (config.getType() == Constant.CloudService.ALIYUN.getValue()) {
            return new AliyunCloudStorageService(config);
        } else if (config.getType() == Constant.CloudService.QCLOUD.getValue()) {
            return new QcloudCloudStorageService(config);
        }

        return null;
    }

}
