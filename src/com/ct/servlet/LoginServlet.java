package com.ct.servlet;

import com.ct.pojo.Person;
import com.ct.service.PersonService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        Person person = new Person();
        person.setEmail(email);
        person.setPassword(password);

        PersonService personService = new PersonService();
        int num = personService.personLogin(person);

        if (num==0){
            response.sendRedirect("register.jsp");
        }else{
            ServletContext application = this.getServletContext();
            Object countstr = application.getAttribute("countstr");

            int count = 0;
            if(countstr==null){
                count = 1;
            }else{
                count = Integer.parseInt(countstr.toString());
                count++;
            }
            application.setAttribute("countstr",count);

            //创建Cookie保存已登录状态
            Cookie cookie = new Cookie("email",email);
            //设置Cookie存在事件1天
            cookie.setMaxAge(60*60*24);
            //设置访问路径
            cookie.setPath("/");
            response.addCookie(cookie);

            String WelcomeName = cookie.getValue();
            application.setAttribute("welcome",WelcomeName);

            response.sendRedirect("MainServlet");
        }
    }
}
