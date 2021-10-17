package com.ct.servlet;

import com.ct.pojo.Book;
import com.ct.service.BookService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "BookServlet")
public class BookServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));

        BookService bookService = new BookService();
        Book book = bookService.bookSelectById(id);

        if(book.getStay().equals("可借阅")){
            book.setStay("已借出");
        }else {
            book.setStay("可借阅");
        }

        bookService.bookStay(book);

        response.sendRedirect("ArticleServlet");

    }
}
