package com.ct.servlet;

import javax.imageio.ImageIO;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

@WebServlet(name = "ImageServlet")
public class ImageServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BufferedImage image = new BufferedImage(60,20,BufferedImage.TYPE_INT_BGR);

        Graphics g = image.getGraphics();
        g.setFont(new Font("Times New Roman",Font.PLAIN,18));

        Random random = new Random();
        String str = "";
        String sr;
        String s = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890";
        char[] c = s.toCharArray();
        for(int i=0;i<4;i++){
            //String rand = String.valueOf(random.nextInt(10));
            char rand = c[random.nextInt(c.length)];
            sr = String.valueOf(rand);
            str += sr;
            g.drawString(sr,13*i+6,16);
            //g.drawString(rand,13*i+6,16);
        }
        g.dispose();
        request.getSession().setAttribute("rand",str);
        ImageIO.write(image,"JPEG",response.getOutputStream());

    }
}
