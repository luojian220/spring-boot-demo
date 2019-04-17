package com.luno.softone.utils;

import org.apache.curator.RetryPolicy;
import org.apache.curator.framework.CuratorFramework;
import org.apache.curator.framework.CuratorFrameworkFactory;
import org.apache.curator.framework.recipes.locks.InterProcessMutex;
import org.apache.curator.retry.BoundedExponentialBackoffRetry;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.RedisSystemException;
import org.springframework.data.redis.connection.RedisConnection;
import org.springframework.data.redis.connection.ReturnType;
import org.springframework.data.redis.core.HashOperations;
import org.springframework.data.redis.core.ListOperations;
import org.springframework.data.redis.core.RedisCallback;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.SetOperations;
import org.springframework.data.redis.core.ValueOperations;
import org.springframework.data.redis.core.ZSetOperations;
import org.springframework.data.redis.serializer.RedisSerializer;
import org.springframework.stereotype.Component;

import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Set;

/**
 * @author luojian
 * @version 4.0
 * @ClassName: RedisService
 * @Reason:
 * @date: 2018年05月22日 16:31
 * @since JDK 1.7
 */

@Component
public class RedisService {

    private static final Logger logger = LoggerFactory.getLogger(RedisService.class);

    private static final String LOCK_SUCCESS = "OK";
    private static final String SET_IF_NOT_EXIST = "NX";
    private static final String SET_WITH_EXPIRE_TIME = "EX";
    private static final Long RELEASE_SUCCESS = 1L;

    @Autowired
    private RedisTemplate redisTemplate;
    /**
     * 写入缓存
     * @param key
     * @param value
     * @return
     */
    public boolean set(final String key, Object value) {
        boolean result = false;
        try {
            ValueOperations<Serializable, Object> operations = redisTemplate.opsForValue();
            operations.set(key, value);
            result = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
    /**
     * 写入缓存设置时效时间
     * @param key
     * @param value
     * @return
     */
    public boolean set(final String key, Object value, Long expireTime) {
        boolean result = false;
        try {
            ValueOperations<Serializable, Object> operations = redisTemplate.opsForValue();
            operations.set(key, value,expireTime);
            result = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
    /**
     * 批量删除对应的value
     * @param keys
     */
    public void remove(final String... keys) {
        for (String key : keys) {
            remove(key);
        }
    }

    /**
     * 批量删除key
     * @param pattern
     */
    public void removePattern(final String pattern) {
        Set<Serializable> keys = redisTemplate.keys(pattern);
        if (keys.size() > 0)
            redisTemplate.delete(keys);
    }
    /**
     * 删除对应的value
     * @param key
     */
    public void remove(final String key) {
        if (exists(key)) {
            redisTemplate.delete(key);
        }
    }
    /**
     * 判断缓存中是否有对应的value
     * @param key
     * @return
     */
    public boolean exists(final String key) {
        return redisTemplate.hasKey(key);
    }
    /**
     * 读取缓存
     * @param key
     * @return
     */
    public Object get(final String key) {
        Object result = null;
        ValueOperations<Serializable, Object> operations = redisTemplate.opsForValue();
        result = operations.get(key);
        return result;
    }
    /**
     * 哈希 添加
     * @param key
     * @param hashKey
     * @param value
     */
    public void hmSet(String key, Object hashKey, Object value){
        HashOperations<String, Object, Object> hash = redisTemplate.opsForHash();
        hash.put(key,hashKey,value);
    }

    /**
     * 哈希获取数据
     * @param key
     * @param hashKey
     * @return
     */
    public Object hmGet(String key, Object hashKey){
        HashOperations<String, Object, Object>  hash = redisTemplate.opsForHash();
        return hash.get(key,hashKey);
    }

    /**
     * 列表添加
     * @param k
     * @param v
     */
    public void lPush(String k,Object v){
        ListOperations<String, Object> list = redisTemplate.opsForList();
        list.rightPush(k,v);
    }

    /**
     * 列表获取
     * @param k
     * @param l
     * @param l1
     * @return
     */
    public List<Object> lRange(String k, long l, long l1){
        ListOperations<String, Object> list = redisTemplate.opsForList();
        return list.range(k,l,l1);
    }

    /**
     * 集合添加
     * @param key
     * @param value
     */
    public void add(String key,Object value){
        SetOperations<String, Object> set = redisTemplate.opsForSet();
        set.add(key,value);
    }

    /**
     * 集合获取
     * @param key
     * @return
     */
    public Set<Object> setMembers(String key){
        SetOperations<String, Object> set = redisTemplate.opsForSet();
        return set.members(key);
    }

    /**
     * 有序集合添加
     * @param key
     * @param value
     * @param scoure
     */
    public void zAdd(String key,Object value,double scoure){
        ZSetOperations<String, Object> zset = redisTemplate.opsForZSet();
        zset.add(key,value,scoure);
    }

    /**
     * 有序集合获取
     * @param key
     * @param scoure
     * @param scoure1
     * @return
     */
    public Set<Object> rangeByScore(String key,double scoure,double scoure1){
        ZSetOperations<String, Object> zset = redisTemplate.opsForZSet();
        return zset.rangeByScore(key, scoure, scoure1);
    }


    /**
     * 序列化方式为：用StringSerializer 获取key，及用StringSerializer反序列化value
     * 读取缓存
     * @param key
     * @return
     */
    public String getStringByStringSerializer(final String key) {
        String result = (String) redisTemplate.execute((RedisCallback<String>) connection -> {
            RedisSerializer<String> serializer = redisTemplate.getStringSerializer();
            byte[] value = connection.get(serializer.serialize(key));
            return serializer.deserialize(value);
        });
        return result;
    }

    /**
     * 尝试获取分布式锁
     *  lockKey作为一个全局锁标识，requestId作为持有锁用户线程唯一标识。
     *  用户线程A获取锁后，为防止其他线程或其他客户端释放锁，requestId作为校验依据
     *  如果持有锁的线程异常中断，未及时释放锁，需等待expireTime秒的超时时间，自动释放。
     * @param lockKey    锁key
     * @param requestId  请求标识
     * @param expireTime 超期时间  单位秒
     * @return 是否获取成功
     */
    public boolean tryGetDistributedLock(String lockKey, String requestId, long expireTime) {
        logger.info("try get distributed lock:{lockKey:{},requestId:{}}", lockKey, requestId);
        Boolean result = (Boolean) redisTemplate.execute((RedisCallback<Boolean>) connection -> {
            RedisSerializer<String> serializer = redisTemplate.getStringSerializer();
            Object result1 = connection.execute("set", serializer.serialize(lockKey), serializer.serialize(requestId),
                    serializer.serialize(SET_IF_NOT_EXIST), serializer.serialize(SET_WITH_EXPIRE_TIME),
                    getByteArray(String.valueOf(expireTime)));
            return LOCK_SUCCESS.equals(result1);
        });
        if (result) {
            logger.info("success get distributed lock:{lockKey:{},requestId:{}} ", lockKey, requestId);
        }
        return result;
    }

    /**
     * 释放分布式锁
     *  lockKey作为一个全局锁标识，requestId作为持有锁用户线程唯一标识。
     *  用户线程A获取锁后，为防止其他线程或其他客户端释放锁，requestId作为校验依据
     *  如果持有锁的线程异常中断，未及时释放锁，需等待expireTime秒的超时时间，自动释放。
     * @param lockKey   锁
     * @param requestId 请求标识 每次获取锁与释放锁传入相同值
     * @return 是否释放成功
     */
    public boolean releaseDistributedLock(String lockKey, String requestId) {

        logger.info("release lock:{lockKey:{},requestId:{}}", lockKey, requestId);
        String script = "if redis.call('get', KEYS[1]) == ARGV[1] then return redis.call('del', KEYS[1]) else return 0 end";
        return redisTemplate.execute(
                (RedisConnection connection) -> connection.eval(
                        script.getBytes(),
                        ReturnType.INTEGER,
                        1,
                        lockKey.getBytes(),
                        requestId.getBytes())
        ).equals(RELEASE_SUCCESS);
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

    /**
     * 测试 zk 分布式锁
     * @param lockPath
     * @throws Exception
     */
    public static void main(String[] args) throws Exception {
        RetryPolicy retryPolicy = new BoundedExponentialBackoffRetry(1000,3,3);
        CuratorFramework client = CuratorFrameworkFactory.newClient("127.0.0.1:2181",retryPolicy);

        client.start();
        InterProcessMutex mutex = new InterProcessMutex(client,"test2");
        // 获得了锁
        mutex.acquire();
        // 完成业务 ， 释放锁
        mutex.release();
        client.close();
    }

}