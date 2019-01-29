package com.luno.softone.config;

import com.google.code.kaptcha.impl.DefaultKaptcha;
import com.google.code.kaptcha.util.Config;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.Properties;

/**
 * @author luojian
 * @version 1.0
 * @ClassName: BeanConfig
 * @Reason: TODO ADD REASON(可选)
 * @date: 2019年01月29日 17:19
 * @company:宝尊电商
 * @since JDK 1.7
 */
@Configuration
public class BeanConfig {

    /**
     * <bean name="producer" class="com.google.code.kaptcha.impl.DefaultKaptcha" scope="singleton">
     *         <property name="config">
     *             <bean class="com.google.code.kaptcha.util.Config">
     *                 <constructor-arg>
     *                     <props>
     *                         <prop key="kaptcha.border">no</prop>
     *                         <prop key="kaptcha.textproducer.font.color">black</prop>
     *                         <prop key="kaptcha.textproducer.char.space">4</prop>
     *                         <prop key="kaptcha.textproducer.char.length">4</prop>
     *                         <prop key="kaptcha.textproducer.char.string">123456789</prop>
     *                     </props>
     *                 </constructor-arg>
     *             </bean>
     *         </property>
     *     </bean>
     */
    @Bean(name = "producer")
    public DefaultKaptcha getDefaultKaptcha() {
        DefaultKaptcha defaultKaptcha = new DefaultKaptcha();
        Properties properties = new Properties();
        properties.put("kaptcha.border","no");
        properties.put("kaptcha.textproducer.font.color","black");
        properties.put("kaptcha.textproducer.char.space","4");
        properties.put("kaptcha.textproducer.char.length","4");
        properties.put("kaptcha.textproducer.char.string","123456789");
        defaultKaptcha.setConfig(new Config(properties));
        return defaultKaptcha;
    }
}
