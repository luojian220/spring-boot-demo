package com.luno.softone.shiro;

import com.luno.softone.utils.Constant;
import com.luno.softone.utils.RedisService;
import org.apache.shiro.session.Session;
import org.apache.shiro.session.mgt.eis.EnterpriseCacheSessionDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.io.Serializable;

/**
 * 分布式session管理
 *
 * @author dcs
 * @date 2018年07月31日 上午14:50
 */
@Component
public class CluterShiroSessionDao extends EnterpriseCacheSessionDAO {

    @Autowired
    private RedisService redisService;

    /**
     * session 缓存时间
     */
    private static final long GLOBAL_SESSION_TIMEOUT = 1800000L;

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

        redisService.remove(key);
    }

    private Session getShiroSession(String key) {

        return (Session) redisService.get(key);
    }

    private void setShiroSession(String key, Session session) {

        redisService.set(key,session,GLOBAL_SESSION_TIMEOUT);
    }
}
