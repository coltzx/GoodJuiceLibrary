package com.ct.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
import java.io.*;

public class Mylistener implements ServletRequestListener,ServletContextListener, HttpSessionListener {
    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        System.out.println("application创建");
        File file = new File("C:/Users/zxwon/Documents/javaWeb/src/com/ct/listener/countstr.txt");

        try {
            BufferedReader br = null;
            FileReader fr = new FileReader(file);
            br = new BufferedReader(fr);
            String countstr = br.readLine();
            servletContextEvent.getServletContext().setAttribute("countstr",Integer.parseInt(countstr));
            br.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {
        System.out.println("application销毁");

        Object countstr = servletContextEvent.getServletContext().getAttribute("countstr");
        File file = new File("C:/Users/zxwon/Documents/javaWeb/src/com/ct/listener/countstr.txt");

        try {
            BufferedWriter bw = null;
            FileWriter fw = new FileWriter(file);
            bw = new BufferedWriter(fw);
            bw.write(countstr.toString());
            bw.close();
        } catch (Exception e) {
            e.printStackTrace();
        }


    }

    @Override
    public void requestDestroyed(ServletRequestEvent servletRequestEvent) {
        System.out.println("request创建");
    }

    @Override
    public void requestInitialized(ServletRequestEvent servletRequestEvent) {
        System.out.println("request销毁");
    }

    @Override
    public void sessionCreated(HttpSessionEvent httpSessionEvent) {
        System.out.println("session创建");
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent httpSessionEvent) {
        System.out.println("session销毁");
    }
}
