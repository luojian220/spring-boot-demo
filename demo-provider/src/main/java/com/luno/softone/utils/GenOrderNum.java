package com.luno.softone.utils;

import com.luno.softone.common.cache.J2CacheUtils;
import com.luno.softone.common.utils.DateUtils;
import com.luno.softone.common.utils.RedisUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.text.DecimalFormat;
import java.util.Date;
import java.util.concurrent.atomic.AtomicInteger;

@Component
public class GenOrderNum {


    private static final String STR_FORMAT = "0000";

    private static final String key = "genCustomerNum";

    @Autowired
    private RedisService redisService;
    /**
     * 生成客户编号
     * YS-2018100300001
     * @return
     */
    public String getCustomerNum() {
        StringBuilder sb = new StringBuilder("YS-");
        String today = DateUtils.format(new Date(),"yyyyMMdd");
        sb.append(today);
        String key = "genCustomerNum";

        Object o= redisService.get(key);
        if (o == null) {
            sb.append("0001");
        } else {
            String last = String.valueOf(o);
            String dataStr = last.substring(3,11);
            if (dataStr.equals(today)) {
                String numStr = last.substring(11);
                AtomicInteger incr = new AtomicInteger(Integer.parseInt(numStr));
                int nextNum = incr.incrementAndGet();
                sb.append(leftAddZero(nextNum));
            } else {
                sb.append("0001");
            }
        }
        redisService.set(key , sb.toString());
        return sb.toString();
    }

    private static String leftAddZero(Integer seqNo) {

        DecimalFormat df = new DecimalFormat(STR_FORMAT);
        return df.format(seqNo);
    }
}
