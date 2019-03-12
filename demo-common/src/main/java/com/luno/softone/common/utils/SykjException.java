package com.luno.softone.common.utils;

/**
 * @author luojian
 * @version 1.0
 * @ClassName: SykjException
 * @Reason: TODO ADD REASON(可选)
 * @date: 2019年01月29日 16:41

 * @since JDK 1.7
 */
public class SykjException extends RuntimeException {
    private static final long serialVersionUID = -487882764509957320L;
    private int code;
    private String msg;

    public SykjException() {
    }

    public SykjException(String msg) {
        super(msg);
        this.msg = msg;
    }

    public SykjException(Throwable cause) {
        super(cause);
    }

    public SykjException(String message, Throwable cause) {
        super(message, cause);
        this.msg = this.msg;
    }

    public SykjException(int code, String msg) {
        super(msg);
        this.code = code;
        this.msg = msg;
    }

    public int getCode() {
        return this.code;
    }

    public String getMsg() {
        return this.msg;
    }
}