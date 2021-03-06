package com.luno.softone.common.validator;

import com.luno.softone.common.exception.RRException;
import org.apache.commons.lang3.StringUtils;

/**
 * 数据校验
 *
 * @author dcs
 * @email 123456
 * @date 2017-03-23 15:50
 */
public abstract class Assert {

    public static void isBlank(String str, String message) {
        if (StringUtils.isBlank(str)) {
            throw new RRException(message);
        }
    }

    public static void isNull(Object object, String message) {
        if (object == null) {
            throw new RRException(message);
        }
    }
}
