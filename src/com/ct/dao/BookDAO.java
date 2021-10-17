package com.ct.dao;

import com.ct.db.ConnDB;
import com.ct.pojo.Book;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class BookDAO {


    Connection conn = null;
    PreparedStatement ps = null;

    ResultSet rs = null;


    public int bookDeleteById(int id){
        int num = 0;

        conn = ConnDB.openConn();
        try {

            String sql = "delete from book where id=?";

            ps = conn.prepareStatement(sql);

            ps.setInt(1,id);

            num = ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            ConnDB.closeDB(rs,ps,conn);
        }
        return num;
    }


    public Book bookSelectByName(String name){
        Book book = null;
        conn = ConnDB.openConn();

        try {
            String sql = "select * from book where name=?";
            ps = conn.prepareStatement(sql);
            ps.setString(1,name);
            rs = ps.executeQuery();
            if(rs.next()){
                book = new Book();
                book.setId(rs.getInt("id"));
                book.setName(rs.getString("name"));
                book.setPrice(rs.getDouble("price"));
                book.setPress(rs.getString("press"));
                book.setAuthor(rs.getString("author"));
                book.setStay(rs.getString("stay"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            ConnDB.closeDB(rs,ps,conn);
        }
        return book;
    }


    public List<Book> bookSelect(){

        List<Book> list = new ArrayList<Book>();

        conn = ConnDB.openConn();
        try {

            String sql = "select * from book";

            ps = conn.prepareStatement(sql);

            rs = ps.executeQuery();

            while(rs.next()){

                int id = rs.getInt("id");
                String name = rs.getString("name");
                double price = rs.getDouble("price");
                String author = rs.getString("author");
                String press = rs.getString("press");
                String stay = rs.getString("stay");

                Book book = new Book();
                book.setId(id);
                book.setName(name);
                book.setPrice(price);
                book.setAuthor(author);
                book.setPress(press);
                book.setStay(stay);

                list.add(book);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {

            ConnDB.closeDB(rs,ps,conn);
        }
        return list;
    }

    public List<Book> bookSelectByPage(int pageNow,int pageSize){
        List<Book> list = new ArrayList<Book>();
        conn = ConnDB.openConn();

        try {
            String sql = "select * from book limit ?,?";
            ps = conn.prepareStatement(sql);
            ps.setInt(1,pageNow);
            ps.setInt(2,pageSize);
            rs = ps.executeQuery();
            while(rs.next()){
                Book book = new Book();
                book.setId(rs.getInt("id"));
                book.setName(rs.getString("name"));
                book.setPrice(rs.getDouble("price"));
                book.setAuthor(rs.getString("author"));
                book.setPress(rs.getString("press"));

                list.add(book);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            ConnDB.closeDB(rs,ps,conn);
        }
        return list;
    }

    public int bookSelectByCount(){
        int num = 0;
        conn = ConnDB.openConn();

        try {
            String sql = "select count(*) from book";
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            if(rs.next()){
                num = rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            ConnDB.closeDB(rs,ps,conn);
        }
        return num;
    }

    public int bookUpload(Book book){
        int num = 0;
        conn = ConnDB.openConn();

        try {
            String sql = "insert into book(name,author,price,press) values(?,?,?,?)";
            ps = conn.prepareStatement(sql);
            ps.setString(1,book.getName());
            ps.setString(2,book.getAuthor());
            ps.setDouble(3, book.getPrice());
            ps.setString(4, book.getPress());

            num = ps.executeUpdate();
        } catch (Exception throwables) {
            throwables.printStackTrace();
        } finally {
            ConnDB.closeDB(rs,ps,conn);
        }
            return num;
    }

    public int bookUpdate(Book book){
        int num = 0;
        conn = ConnDB.openConn();
        try {
            String sql = "update book set name=?,author=?,price=?,press=?where id=?";
            ps = conn.prepareStatement(sql);
            ps.setString(1,book.getName());
            ps.setString(2,book.getAuthor());
            ps.setDouble(3,book.getPrice());
            ps.setString(4,book.getPress());
            ps.setInt(5,book.getId());
            num = ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            ConnDB.closeDB(rs,ps,conn);
        }
        return num;
    }

    public int bookStay(Book book){
        int num = 0;
        conn = ConnDB.openConn();
        try {
            String sql = "update book set stay=? where id=?";
            ps = conn.prepareStatement(sql);
            ps.setString(1,book.getStay());
            ps.setInt(2,book.getId());
            num = ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            ConnDB.closeDB(rs,ps,conn);
        }
        return num;
    }

    public Book bookSelectById(int id){
        Book book = null;
        conn = ConnDB.openConn();

        try {
            String sql = "select * from book where id=?";
            ps = conn.prepareStatement(sql);
            ps.setInt(1,id);
            rs = ps.executeQuery();
            if(rs.next()){
                book = new Book();
                book.setId(rs.getInt("id"));
                book.setName(rs.getString("name"));
                book.setPrice(rs.getDouble("price"));
                book.setPress(rs.getString("press"));
                book.setAuthor(rs.getString("author"));
                book.setStay(rs.getString("stay"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            ConnDB.closeDB(rs,ps,conn);
        }
        return book;
    }
}
