package com.ct.dao;

import com.ct.db.ConnDB;
import com.ct.pojo.Person;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class PersonDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public int personRegister(Person person){
        int num= 0;
        conn = ConnDB.openConn();
//        System.out.println(conn);
//        System.out.println(person);
        //编写SQL语句
        try {
            String sql = "insert into person(name,password,email) values(?,?,?)";
            ps = conn.prepareStatement(sql);

            ps.setString(1,person.getName());
            ps.setString(2,person.getPassword());
            ps.setString(3,person.getEmail());
            //增删改查
            num = ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            ConnDB.closeDB(rs,ps,conn);
        }
        return num;
    }


    public int personLogin(Person person){
        int num = 0;
        conn = ConnDB.openConn();

        try {
            String sql = "select * from person where email=? and password=?";

            ps = conn.prepareStatement(sql);

            ps.setString(1,person.getEmail());
            ps.setString(2,person.getPassword());

            rs = ps.executeQuery();

            if(rs.next()){
                num = 1;
            }

        } catch (Exception throwables) {
            throwables.printStackTrace();
        }finally {
            ConnDB.closeDB(rs,ps,conn);
        }
        return num;
    }

    public int personCheckName(String name){
        int num = 0;
        conn = ConnDB.openConn();

        try {
            String sql = "select * from person where name=?";
            ps = conn.prepareStatement(sql);
            ps.setString(1,name);
            rs = ps.executeQuery();
            if(rs.next()){
                num = 1;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            ConnDB.closeDB(rs,ps,conn);
        }
        return num;
    }

    public int personCheckEmail(String email){
        int num = 0;
        conn = ConnDB.openConn();

        try {
            String sql = "select * from person where email=?";
            ps = conn.prepareStatement(sql);
            ps.setString(1,email);
            rs = ps.executeQuery();
            if (rs.next()){
                num = 1;
            }
        } catch (Exception throwables) {
            throwables.printStackTrace();
        } finally {
            ConnDB.closeDB(rs,ps,conn);
        }
            return num;
    }
}
