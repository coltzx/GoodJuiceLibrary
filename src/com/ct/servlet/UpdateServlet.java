package com.ct.servlet;

import com.ct.pojo.Book;
import com.ct.service.BookService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UpdateServlet")
public class UpdateServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        Double price = Double.parseDouble(request.getParameter("price"));
        String author = request.getParameter("author");
        String press = request.getParameter("press");

        Book book = new Book();
        book.setId(id);
        book.setName(name);
        book.setPrice(price);
        book.setAuthor(author);
        book.setPress(press);

        BookService bookService = new BookService();
        int num = bookService.bookUpdate(book);

        response.sendRedirect("MainServlet");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
