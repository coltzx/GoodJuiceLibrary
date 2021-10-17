package com.ct.dao;

import com.ct.db.ConnDB;
import com.ct.pojo.Author;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AuthorDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Author> authorSelect(){
        List<Author> list2 = new ArrayList<Author>();
        conn = ConnDB.openConn();
        try {
            //2.编写SQL语句
            String sql = "select * from author";
            //3.获取ps对象
            ps = conn.prepareStatement(sql);
            //4.ps查
            rs = ps.executeQuery();
            //5.循环遍历
            while(rs.next()){
                int id = rs.getInt("id");
                String name = rs.getString("name");

                Author author = new Author();
                author.setId(id);
                author.setName(name);

                list2.add(author);
            }
        } catch (
                SQLException e) {
            e.printStackTrace();
        } finally {
            //关闭数据库
            ConnDB.closeDB(rs,ps,conn);
        }
        return list2;
    }
}
