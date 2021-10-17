package com.ct.servlet;

import com.ct.pojo.Person;
import com.ct.service.PersonService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "RegisterServlet")
public class RegisterServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");

        String name = request.getParameter("name");
        String password = request.getParameter("password");
        String email = request.getParameter("email");

        Person person = new Person();
        person.setName(name);
        person.setPassword(password);
        person.setEmail(email);

        PersonService personService = new PersonService();
        int num = personService.personRegister(person);

        if(num == 0){
            response.sendRedirect("register.jsp");
        }else {
            response.sendRedirect("sign.html");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
