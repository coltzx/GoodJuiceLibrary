package com.ct.servlet;

import com.ct.pojo.Author;
import com.ct.pojo.Book;
import com.ct.pojo.Press;
import com.ct.service.AuthorService;
import com.ct.service.BookService;
import com.ct.service.PressService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "MainServlet")
public class MainServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BookService bookService = new BookService();
        PressService pressService = new PressService();
        AuthorService authorService = new AuthorService();

        List<Book> list = bookService.bookSelect();
        List<Press> list1 = pressService.pressSelect();
        List<Author> list2 = authorService.authorSelect();
        int rowCount = bookService.bookSelectByCount();

        request.setAttribute("list",list);
        request.setAttribute("list1",list1);
        request.setAttribute("list2",list2);
        request.setAttribute("rowCount",rowCount);

        request.getRequestDispatcher("index2.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
