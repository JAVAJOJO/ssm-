//package com.how2java.interceptor;
//
//import org.springframework.web.servlet.HandlerInterceptor;
//import org.springframework.web.servlet.ModelAndView;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//public class MyInterceptor2 implements HandlerInterceptor {
//
//    @Override
//    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
//        System.out.println("拦截器执行了22222222");
//        //httpServletRequest.getRequestDispatcher("/WEB-INF/jsp/error1.jsp").forward(httpServletRequest,httpServletResponse);
//        return true;
//    }
//
//    @Override
//    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {
//        System.out.println("拦截器执行之后....222222");
//        httpServletRequest.getRequestDispatcher("/WEB-INF/jsp/error1.jsp").forward(httpServletRequest,httpServletResponse);
//    }
//
//    @Override
//    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {
//        System.out.println("最后....2222222");
//    }
//}
