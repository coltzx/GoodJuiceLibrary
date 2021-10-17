package com.ct.dao;

import com.ct.db.ConnDB;
import com.ct.pojo.Press;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PressDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Press> pressSelect(){
        List<Press> list1 = new ArrayList<Press>();
        conn = ConnDB.openConn();
        try {
        //2.编写SQL语句
        String sql = "select * from press";
        //3.获取ps对象
        ps = conn.prepareStatement(sql);
        //4.ps查
        rs = ps.executeQuery();
        //5.循环遍历
        while(rs.next()){
            int id = rs.getInt("id");
            String name = rs.getString("name");

            Press press = new Press();
            press.setId(id);
            press.setName(name);


            list1.add(press);
        }
    } catch (SQLException e) {
            e.printStackTrace();
    } finally {
        //关闭数据库
        ConnDB.closeDB(rs,ps,conn);
    }
        return list1;
}
}

