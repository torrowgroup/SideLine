package com.sideline.controll;

import java.awt.Color;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ImageServlet")
public class ImageServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BufferedImage bi=new BufferedImage(68,22,BufferedImage.TYPE_INT_RGB);
		Graphics g=bi.getGraphics();
		Color c=new Color(200,150,255);
		g.setColor(c);
		g.fillRect(0,0,68,22);
		
		char[] ch="ABCDEFGHIJKLMNOPQRSTUVWXYZ123456789".toCharArray();//设置验证码随机出现的字母数字
		Random r=new Random();
		int len=ch.length,index;
		StringBuffer sb=new StringBuffer();
		for(int i=0;i<4;i++){                                          //设置出现多少个字母或数字
			index=r.nextInt(len);
			g.setColor(new Color(r.nextInt(88),r.nextInt(188),r.nextInt(255)));
			g.drawString(ch[index]+"",(i*15)+3,18);
			sb.append(ch[index]);
			
		}
		request.getSession().setAttribute("piccode",sb.toString());
		ImageIO.write(bi, "JPG", response.getOutputStream());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
