package com.sideline.controll;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LogoutServlet")
public class LogoutServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ask=request.getParameter("ask");
		System.out.println(ask);
		if(ask.equals("exit")){
			request.getRequestDispatcher("/WEB-INF/jsp/logout.jsp").forward(request, response);
		}
		else if(ask.equals("exitmanager")){
			request.getRequestDispatcher("/WEB-INF/jsp/managerlogout.jsp").forward(request, response);
		}else if(ask.equals("delet")){
			request.getSession().invalidate();
			response.setHeader("Cache-Control", "no-cache");
	        response.setHeader("pragma", "no-cache");
	        response.setDateHeader("expires", -1);
			//request.getRequestDispatcher("/RearLogin.jsp").forward(request, response);
			response.sendRedirect("/SideLine/index.jsp");
		}
		else if(ask.equals("deletmanager")){
			request.getSession().invalidate();
			response.setHeader("Cache-Control", "no-cache");
	        response.setHeader("pragma", "no-cache");
	        response.setDateHeader("expires", -1);
			//request.getRequestDispatcher("/RearLogin.jsp").forward(request, response);
			response.sendRedirect("/SideLine/managerpage.jsp");
		}
	}

}
