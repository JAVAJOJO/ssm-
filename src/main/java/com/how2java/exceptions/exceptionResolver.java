//package com.how2java.exceptions;
//
//import org.springframework.web.servlet.HandlerExceptionResolver;
//import org.springframework.web.servlet.ModelAndView;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//public class exceptionResolver implements HandlerExceptionResolver{
//    @Override
//    public ModelAndView resolveException(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) {
//        exception ex=null;
//        if (e instanceof exception){
//            ex=(exception)e;
//        }else {
//            ex=new exception("系统正在维护...");
//        }
//        ModelAndView mv=new ModelAndView();
//        mv.addObject("errorMsg",e.getMessage());
//        mv.setViewName("error");
//        return mv;
//    }
//}
