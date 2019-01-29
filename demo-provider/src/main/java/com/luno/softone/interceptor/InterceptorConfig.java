package com.luno.softone.interceptor;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * @author luojian
 * @version 1.0
 * @ClassName: InterceptorConfig
 * @Reason: TODO ADD REASON(可选)
 * @date: 2019年01月29日 14:30
 * @company:宝尊电商
 * @since JDK 1.7
 */
@Configuration
public class InterceptorConfig implements WebMvcConfigurer {


    /**
     * 通过@Bean注解，将我们定义的拦截器注册到Spring容器
     * @return
     */
    @Bean
    public HandlerInterceptor staticPathInterceptor(){
        return new StaticPathInterceptor();
    }

    /**
     * 重写接口中的addInterceptors方法，添加自定义拦截器
     * @param registry
     */
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        // 通过registry来注册拦截器，通过addPathPatterns来添加拦截路径
        //registry.addInterceptor(this.staticPathInterceptor()).addPathPatterns("/statics/**");
    }



}
