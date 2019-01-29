package com.luno.softone.utils;

import com.luno.softone.cache.J2CacheUtils;

import java.text.DecimalFormat;
import java.util.Date;
import java.util.concurrent.atomic.AtomicInteger;

public class GenOrderNum {


    private static final String STR_FORMAT = "0000";

    private static final String key = "genCustomerNum";
    /**
     * 生成客户编号
     * YS-2018100300001
     * @return
     */
    public static String getCustomerNum() {
        StringBuilder sb = new StringBuilder("YS-");
        String today = DateUtils.format(new Date(),"yyyyMMdd");
        sb.append(today);
//        String key = "genCustomerNum";

//        Object o= J2CacheUtils.get(J2CacheUtils.YSCRMS_CACHE_NAME,key);
        // TODO: 2019/1/29 redis 取数据 
        Object o= null;
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
        //J2CacheUtils.put(J2CacheUtils.YSCRMS_CACHE_NAME,key,sb.toString());
        // TODO: 2019/1/29 redis 存数据
        RedisUtils.set(J2CacheUtils.YSCRMS_CACHE_NAME.concat(key),sb.toString());
        return sb.toString();
    }

    private static String leftAddZero(Integer seqNo) {

        DecimalFormat df = new DecimalFormat(STR_FORMAT);
        return df.format(seqNo);
    }
}
