package com.luno.softone.utils;

import com.alibaba.fastjson.JSON;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.RedisSystemException;
import org.springframework.data.redis.core.RedisCallback;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.serializer.RedisSerializer;
import org.springframework.stereotype.Service;

import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.concurrent.TimeUnit;
/**
 * @author luojian
 * @version 1.0
 * @ClassName: RedisServiceImpl
 * @Reason:  该类只是参考，不使用
 * @date: 2019年04月17日 10:19
 * @since JDK 1.7
 */

@Service
public class RedisServiceImpl implements IRedisService {

    private static final Logger logger = LoggerFactory.getLogger(RedisServiceImpl.class);

    private static final String LOCK_SUCCESS = "OK";
    private static final String SET_IF_NOT_EXIST = "NX";
    private static final String SET_WITH_EXPIRE_TIME = "PX";
    private static final Long RELEASE_SUCCESS = 1L;


    @Autowired
    private RedisTemplate<String, ?> redisTemplate;


    @Override
    public boolean set(final String key, final String value) {
        Boolean result = redisTemplate.execute((RedisCallback<Boolean>) connection -> {
            RedisSerializer<String> serializer = redisTemplate.getStringSerializer();
            connection.set(serializer.serialize(key), serializer.serialize(value));
            return true;
        });
        return result;
    }

    @Override
    public boolean set(final String key, final String value, final String nxxx, final String expx, final long time) {
        Boolean result = false ;
        try {
            result = redisTemplate.execute((RedisCallback<Boolean>) connection -> {
                RedisSerializer<String> serializer = redisTemplate.getStringSerializer();
                Object result1 = connection.execute("set", serializer.serialize(key), serializer.serialize(value),
                        serializer.serialize(nxxx), serializer.serialize(expx),
                        getByteArray(String.valueOf(time)));

                if (LOCK_SUCCESS.equals(result1)) {
                    return true;
                }
                return false;
            });
        } catch (Exception e) {
            logger.error("redis操作异常",e);
        }
        return result;
    }


    @Override
    public String get(final String key) {
        String result = redisTemplate.execute((RedisCallback<String>) connection -> {
            RedisSerializer<String> serializer = redisTemplate.getStringSerializer();
            byte[] value = connection.get(serializer.serialize(key));
            return serializer.deserialize(value);
        });
        return result;
    }

    @Override
    public boolean expire(final String key, long expire) {
        return redisTemplate.expire(key, expire, TimeUnit.SECONDS);
    }

    @Override
    public <T> boolean setList(String key, List<T> list) {
        String value = JSON.toJSONString(list);
        return set(key, value);
    }

    @Override
    public <T> List<T> getList(String key, Class<T> clz) {
        String json = get(key);
        if (json != null) {
            List<T> list = JSON.parseArray(json, clz);
            return list;
        }
        return null;
    }

    @Override
    public long lpush(final String key, Object obj) {
        final String value = JSON.toJSONString(obj);
        Long result = redisTemplate.execute((RedisCallback<Long>) connection -> {
            RedisSerializer<String> serializer = redisTemplate.getStringSerializer();
            return connection.lPush(serializer.serialize(key), serializer.serialize(value));
        });
        return result;
    }

    @Override
    public long rpush(final String key, Object obj) {
        final String value = JSON.toJSONString(obj);
        Long result = redisTemplate.execute((RedisCallback<Long>) connection -> {
            RedisSerializer<String> serializer = redisTemplate.getStringSerializer();
            return connection.rPush(serializer.serialize(key), serializer.serialize(value));
        });
        return result;
    }

    @Override
    public String lpop(final String key) {
        String result = redisTemplate.execute((RedisCallback<String>) connection -> {
            RedisSerializer<String> serializer = redisTemplate.getStringSerializer();
            byte[] res = connection.lPop(serializer.serialize(key));
            return serializer.deserialize(res);
        });
        return result;
    }

    private byte[] getByteArray(String str) {

        try {
            if (str == null) {
                throw new RuntimeException("value sent to redis cannot be null");
            } else {
                return str.getBytes("UTF-8");
            }
        } catch (UnsupportedEncodingException var2) {
            throw new RedisSystemException("redis string to byte exception",var2);
        }
    }
}