package com.luno.softone.task;

import com.luno.softone.model.entity.CustomerEntity;
import com.luno.softone.service.CustomerService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author luojian
 * @version 1.0
 * @ClassName: VipCustomerUpdateTask
 * @Reason: TODO ADD REASON(可选)
 * @date: 2018年11月28日 21:25
 * @company:warWolf
 * @since JDK 1.8
 */
@Component("vipCustomerUpdateTask")
public class VipCustomerUpdateTask {


    private Logger logger = LoggerFactory.getLogger(VipCustomerUpdateTask.class);
    @Autowired
    private CustomerService customerService;


    public void run(){
        logger.info("vip客户到期检查,任务执行开始。。。。。。");
        try {

            Map<String,Object> map = new HashMap<>();
            map.put("cuIsVip","1");
            map.put("cuContractEndTimeLt",new Date());
            List<CustomerEntity> list =customerService.queryList(map);

            for(CustomerEntity item:list ) {
                item.setCuIsVip(0);
                customerService.update(item);
            }
        } catch (Exception e) {
            logger.error("vip客户到期检查异常" ,e);
        }
        logger.info("消息调度,任务执行完成。。。。。。");
    }
}
