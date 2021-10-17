package com.ct.servlet;

import com.ct.service.PersonService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CheckEmailServlet")
public class CheckEmailServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");

        String email = request.getParameter("email");

        PersonService personService = new PersonService();

        int num =  personService.personCheckEmail(email);

        //返回ajax success方法
        response.getWriter().write(num + "");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
