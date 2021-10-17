package com.ct.servlet;

import com.ct.service.BookService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DeleteServlet")
public class DeleteServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取传入参数ID,Integer包装类String--->int
        int id = Integer.parseInt(request.getParameter("id"));

        //控制层调用业务层
        BookService bookService = new BookService();
        int num = bookService.bookDeleteById(id);

        //刷新mainServlet,请求数据并重新传值显示
        response.sendRedirect("MainServlet");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
