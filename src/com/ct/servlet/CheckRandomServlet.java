package com.ct.servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CheckRandomServlet")
public class CheckRandomServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String random = request.getParameter("random");
        Object rand = request.getSession().getAttribute("rand");

        System.out.println(random);
        System.out.println(rand);

        PrintWriter pw = response.getWriter();
        if(random.equals(rand)){
            pw.write("success");
        }else {
            pw.write("fail");
        }
    }
}
