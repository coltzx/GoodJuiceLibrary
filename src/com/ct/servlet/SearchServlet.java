package com.ct.servlet;

import com.ct.pojo.Book;
import com.ct.service.BookService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * 根据ID查询商品
 */
@WebServlet(name = "SearchServlet")
public class SearchServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String name = request.getParameter("search");

        BookService bookService = new BookService();
        Book book = bookService.bookSelectByName(name);

        if (book == null){
            request.setAttribute("msg","抱歉，暂无此书！");
            request.getRequestDispatcher("list_article.jsp").forward(request,response);
        }

        request.setAttribute("book",book);
        request.getRequestDispatcher("list_article.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
