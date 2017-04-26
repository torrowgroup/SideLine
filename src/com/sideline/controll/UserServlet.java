package com.sideline.controll;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sideline.entity.User;
import com.sideline.service.UserService;


@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ask= request.getParameter("ask");
		System.out.println(ask);
		if(ask.equals("check")){
			String username= (String) request.getSession().getAttribute("username");
			User list=null;
			try {
				list = new UserService().fingByname(username);
System.out.println(list);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		    request.setAttribute("list",list);
		    request.getRequestDispatcher("/WEB-INF/jsp/mynew.jsp").forward(request, response);
		} 
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ask= request.getParameter("ask");
		System.out.println(ask);
		if(ask.equals("updateuser")){
			String id=request.getParameter("id");
			String username=request.getParameter("username");
			String password=request.getParameter("password");
			String name=request.getParameter("name");
			String phone=request.getParameter("phone");
			String sex=request.getParameter("sex");
			String age=request.getParameter("age");
			String location=request.getParameter("location");
			String security=request.getParameter("security");
			String answer=request.getParameter("answer");
			User user=new User(id,username,password,name,phone,sex,age,location,security,answer);
			boolean bool=false;
			 PrintWriter out = response.getWriter();
			 try {
				bool=new UserService().update(user);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			 if(bool=true){
				 out.println("更改成功");
				 response.setHeader("refresh", "2;url=/SideLine/UserServlet?ask=check");
			 }
			 else if(bool=false){
				 out.println("更改失败");
				 response.setHeader("refresh", "2;url=/SideLine/UserServlet?ask=check");
			 }
		}
	}

}
