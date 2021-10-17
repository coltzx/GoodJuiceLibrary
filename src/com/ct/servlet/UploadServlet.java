package com.ct.servlet;

import com.ct.pojo.Book;
import com.ct.service.BookService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "UploadServlet")
public class UploadServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        Book book = new Book();

        String name = request.getParameter("title");
        String author = request.getParameter("author");
        Double price = Double.parseDouble(request.getParameter("price"));
        String press = request.getParameter("press");
        String message;
        book.setName(name);
        book.setAuthor(author);
        book.setPrice(price);
        book.setPress(press);

        BookService bookService = new BookService();
        int num = bookService.bookUpload(book);

        if(num==1){

            response.sendRedirect("MainServlet");
        }else{
            response.sendRedirect("upload.jsp");
        }
    }
}
