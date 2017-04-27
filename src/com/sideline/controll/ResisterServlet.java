package com.sideline.controll;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sideline.entity.User;
import com.sideline.service.UserService;

@WebServlet("/ResisterServlet")
public class ResisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ResisterServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		User user = new User();
		user.setUsername(username);
		user.setPassword(password);
		String resisterPrompt = "注册失败，该用户已存在";
		String forward = "index.jsp";
		try {
			boolean boo = new UserService().resister(user);
			if(boo){
				resisterPrompt = "";
				forward = "/WEB-INF/jsp/HomePage.jsp";
				request.getSession().setAttribute("username", username);
			}
			System.out.println(boo+"boo");
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.setAttribute("resisterPrompt", resisterPrompt);
		request.getRequestDispatcher(forward).forward(request, response);
	}

}
