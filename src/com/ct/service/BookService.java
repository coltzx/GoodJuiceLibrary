package com.ct.service;

import com.ct.dao.BookDAO;
import com.ct.pojo.Book;

import java.util.List;

/**
 * 商品业务层
 * @Auth: John
 * Date: 2021/9/9
 */
public class BookService {

    //业务层调用DAO层
    BookDAO bookDAO = new BookDAO();

    /**
     * 根据ID删除商品
     */
    public int bookDeleteById(int id){
        return bookDAO.bookDeleteById(id);
    }

    /**
     * 根据ID查询商品
     */
    public Book bookSelectByName(String name){
       return bookDAO.bookSelectByName(name);
    }

    public Book bookSelectById(int id){
        return bookDAO.bookSelectById(id);
    }
    /**
     * 查询所有商品
     */
    public List<Book> bookSelect(){
        return bookDAO.bookSelect();
    }

    public List<Book> bookSelectByPage(int pageNow,int pageSize){
        return bookDAO.bookSelectByPage(pageNow,pageSize);
    }

    public int bookSelectByCount(){
        return bookDAO.bookSelectByCount();
    }

    public int bookUpload(Book book){
        return bookDAO.bookUpload(book);
    }

    public int bookUpdate(Book book){
        return bookDAO.bookUpdate(book);
    }

    public int bookStay(Book book) {
        return bookDAO.bookStay(book);
    }

}
