package com.luno.softone.config;

import io.swagger.annotations.Api;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

/**
 * @author luojian
 * @version 1.0
 * @ClassName: Swagger2Configuration
 * @Reason:
 * @date: 2019年05月13日 14:55
 * @since JDK 1.7
 */
@Configuration
@EnableSwagger2
public class Swagger2Configuration {

    /*
        请求地址
        http://localhost:8080/swagger-ui.html
    */
    @Bean
    public Docket createRestApi() {
        return new Docket(DocumentationType.SWAGGER_2)
                .apiInfo(apiInfo())
                .select()
                .apis(RequestHandlerSelectors.withClassAnnotation(Api.class))//这是注意的代码
                .paths(PathSelectors.any())
                .build();
    }

    private ApiInfo apiInfo() {
        return new ApiInfoBuilder()
                .title("xxx接口文档")
                .description("xxx相关接口的文档")
                .termsOfServiceUrl("http://www.xxx.com")
                .version("1.0")
                .build();
    }


    /**
     * 2.修改web的拦截器和静态文件
     *  public void addResourceHandlers(ResourceHandlerRegistry registry) {
     //从这里开始，是我加的swagger的静态资源
     registry.addResourceHandler("swagger-ui.html")
     .addResourceLocations("classpath:/META-INF/resources/");
     registry.addResourceHandler("/webjars/**")
     .addResourceLocations("classpath:/META-INF/resources/webjars/");
     super.addResourceHandlers(registry);
     *
     *
     *
     public void addInterceptors(InterceptorRegistry registry) {
     registry.addInterceptor(new RequestInterceptor()).addPathPatterns("/**")
     //从这里开始，我为解决问题添加的，swagger的路径放行
     .excludePathPatterns("/swagger-resources/**", "/webjars/**", "/v2/**", "/swagger-ui.html/**");
     super.addInterceptors(registry);
     }
     */

}