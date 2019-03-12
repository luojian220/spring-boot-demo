package com.luno.softone.interceptor;

import com.luno.softone.common.utils.StringUtils;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author luojian
 * @version 1.0
 * @ClassName: StaticPathInterceptor
 * @Reason: TODO ADD REASON(可选)
 * @date: 2019年01月29日 14:20

 * @since JDK 1.7
 */
public class StaticPathInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        System.out.println("preHandle  method 执行了......!");
        String uri = request.getRequestURI();
        if (StringUtils.isNotEmpty(uri) &&  uri.startsWith("/statics")) {
            String newUri = uri.replace("statics","");
            request.getRequestDispatcher(newUri).forward(request,response);
        }
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        System.out.println("postHandle  method 执行了......!");
    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        System.out.println("afterCompletion  method 执行了......!");
    }
}
