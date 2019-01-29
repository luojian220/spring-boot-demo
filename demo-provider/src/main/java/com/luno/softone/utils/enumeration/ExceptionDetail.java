package com.luno.softone.utils.enumeration;

import java.text.MessageFormat;

public enum ExceptionDetail {

    //系统签到
    SYSSIGN_NOT_EXIST_STAFF_ID(100, "员工编号不存在."),
    SYSSIGN_NOT_EXIST_NC_NUMBER(102, "关联案件编号不存在.");

    /** The code. */
    private int code;

    /** The message. */
    private String message;


    private ExceptionDetail(int code, String message) {
        this.code = code;
        this.message = message;
    }


    public int getCode() {
        return code;
    }


    public String getMessage() {
        return message;
    }


    public static ExceptionDetail resolve(int code) {
        for (ExceptionDetail item : values()) {
            if (item.getCode() == code) {
                return item;
            }
        }
        return null;
    }

    /**
     * With parameters.
     * @param params the parameters
     * @return the string
     */
    public String withParams(Object... params) {
        return MessageFormat.format(this.message, params);
    }
}
