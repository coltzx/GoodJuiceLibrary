package com.ct.servlet;

import com.ct.pojo.Book;
import com.ct.service.BookService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 根据ID查询商品
 */
@WebServlet(name = "SelectServlet")
public class SelectServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));

        //控制层调用业务层
        BookService bookService = new BookService();
        Book book = bookService.bookSelectById(id);

        request.setAttribute("book1",book);
        request.getRequestDispatcher("update.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
