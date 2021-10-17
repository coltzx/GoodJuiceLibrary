package com.ct.filter;

import javax.servlet.*;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class MyFilter implements Filter {
    boolean door = false;
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("Filter生成");
        door = Boolean.parseBoolean(filterConfig.getInitParameter("door"));
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        System.out.println("Filter拦截");
        if(door){
            //判断是否已经登录过
            Boolean flag = false;

            HttpServletRequest requestCookie = (HttpServletRequest)servletRequest;
            //获取对应浏览器的所有Cookies
            Cookie[] cookies = requestCookie.getCookies();
            if(cookies!=null){
                for(Cookie cookie : cookies){
                    if(cookie.getName().equals("email")){
                        flag = true;
                    }
                }
            }
            if(flag){
                //已经登录成功过放行
                filterChain.doFilter(servletRequest,servletResponse);
            }else{
                //没有登录成功过拦跳回login.jsp登录页面
                HttpServletResponse response = (HttpServletResponse)servletResponse;
                response.sendRedirect("sign.html");
            }
        }else{
            //总开关是false直接放行
            filterChain.doFilter(servletRequest,servletResponse);
        }
    }

    @Override
    public void destroy() {
        System.out.println("Filter销毁");
    }
}
