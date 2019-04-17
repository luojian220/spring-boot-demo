package com.luno.softone.shiro;

import com.luno.softone.common.utils.Constant;
import org.apache.shiro.session.Session;
import org.apache.shiro.session.mgt.eis.EnterpriseCacheSessionDAO;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.serializer.Jackson2JsonRedisSerializer;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.io.Serializable;
import java.util.concurrent.TimeUnit;

/**
 * 分布式session管理
 *
 * @author dcs
 * @date 2018年07月31日 上午14:50
 */
@Component
public class CluterShiroSessionDao extends EnterpriseCacheSessionDAO {

    @Resource(name = "redisTemplate")
    private RedisTemplate<String , Session> redisTemplate;

    /**
     * session 缓存时间
     */
    private static final long GLOBAL_SESSION_TIMEOUT = 1800L;

    @Override
    protected Serializable doCreate(Session session) {
        Serializable sessionId = super.doCreate(session);

        final String key = Constant.SESSION_KEY + sessionId.toString();
        setShiroSession(key, session);
        return sessionId;
    }

    @Override
    protected Session doReadSession(Serializable sessionId) {
        Session session = super.doReadSession(sessionId);
        if (null == session) {
            final String key = Constant.SESSION_KEY + sessionId.toString();
            session = getShiroSession(key);
        }
        return session;
    }

    @Override
    protected void doUpdate(Session session) {
        super.doUpdate(session);
        final String key = Constant.SESSION_KEY + session.getId().toString();
        setShiroSession(key, session);
    }

    @Override
    protected void doDelete(Session session) {
        super.doDelete(session);
        final String key = Constant.SESSION_KEY + session.getId().toString();

        redisTemplate.delete(key);
    }

    private Session getShiroSession(String key) {
        redisTemplate.setValueSerializer(new Jackson2JsonRedisSerializer<Session>(Session.class));
        return redisTemplate.opsForValue().get(key);
    }

    private void setShiroSession(String key, Session session) {

        redisTemplate.setValueSerializer(new Jackson2JsonRedisSerializer<Session>(Session.class));
        redisTemplate.opsForValue().set(key,session);
        redisTemplate.expire(key,GLOBAL_SESSION_TIMEOUT, TimeUnit.SECONDS);
    }
}
