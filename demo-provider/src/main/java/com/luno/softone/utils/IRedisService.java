package com.luno.softone.utils;

import java.util.List;

/**
 * @author luojian
 * @version 1.0
 * @ClassName: IRedisService
 * @Reason:
 * @date: 2019年04月17日 10:21
 * @since JDK 1.7
 */
public interface IRedisService {

    /**
     * 设置redis 字符串缓存
     * @param key redis key
     * @param value redis 值
     * @return true or false
     */
    public boolean set(String key, String value);

    /**
     * 尝试设置分布式锁
     * @param key
     * @param value
     * @param nxxx
     * @param expx
     * @param time
     * @return
     */
    public boolean set(String key, String value, String nxxx,
                       String expx, long time);

    public String get(String key);

    public boolean expire(String key, long expire);

    public <T> boolean setList(String key, List<T> list);

    public <T> List<T> getList(String key, Class<T> clz);

    public long lpush(String key, Object obj);

    public long rpush(String key, Object obj);

    public String lpop(String key);
}
