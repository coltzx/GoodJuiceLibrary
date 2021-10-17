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
 * 分页查询控制层
 */
@WebServlet(name = "ArticleServlet")
public class ArticleServlet extends HttpServlet {
    int pageNow = 0; //当前页的起始下标(从0开始包括自己)
    int pageSize = 5; //每页显示几条数据
    int rowCount = 0;//数据库一共有多少条数据
    int pageCount = 0;//一共可以分为多少页

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String changePageNow = request.getParameter("changePageNow");

        if (changePageNow != null) {
            //第一次changePageNow为null,不需要赋值
            //从第二次开始changepageNow才开始赋值
            pageNow = Integer.parseInt(changePageNow);
            if (pageNow < 0) {
                //避免第一页时再点上一页
                pageNow = 0;
            }
            if (pageNow > (pageCount - 1) * pageSize) {
                //避免末页时再点下一页
                pageNow = (pageCount - 1) * pageSize;
            }
        }

        BookService bookService = new BookService();
        rowCount = bookService.bookSelectByCount();

        //求一共有多少页,两种情况:1除尽,2除不尽
        if (rowCount % pageSize == 0) {
            pageCount = rowCount / pageSize;
        } else {
            pageCount = rowCount / pageSize + 1;
        }
        //分页查询
        List<Book> list = bookService.bookSelectByPage(pageNow, pageSize);

        request.setAttribute("list0", list);
        request.setAttribute("pageNow", pageNow);
        request.setAttribute("pageSize", pageSize);
        request.setAttribute("pageCount", pageCount);
        request.getRequestDispatcher("index_article.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}