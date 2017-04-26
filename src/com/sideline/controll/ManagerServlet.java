package com.sideline.controll;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sideline.entity.Manager;
import com.sideline.service.ManagerService;
import com.sideline.service.UserService;

@WebServlet("/ManagerServlet")
public class ManagerServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ask= request.getParameter("ask");
		if(ask.equals("checkmanager")){
			String username= (String) request.getSession().getAttribute("username");
			System.out.println(username);
			Manager manlist=null;
			try {
				manlist = new ManagerService().fingByname(username);
				System.out.println(manlist);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		    request.setAttribute("manlist",manlist);
		    request.getRequestDispatcher("/WEB-INF/jsp/managernew.jsp").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ask=request.getParameter("ask");
		if(ask.equals("updatemanager")){
			String id=request.getParameter("id");
			String username=request.getParameter("username");
			String password=request.getParameter("password");
			String phone=request.getParameter("phone");
			String name=request.getParameter("name");
			Manager manager=new Manager(id,username,password,phone,name);
			boolean bool=false;
			 PrintWriter out = response.getWriter();
			 try {
				bool=new ManagerService().update(manager);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			 if(bool=true){
				 out.println("更改成功");
				 response.setHeader("refresh", "2;url=/SideLine/ManagerServlet?ask=checkmanager");
			 }
			 else if(bool=false){
				 out.println("更改失败");
				 response.setHeader("refresh", "2;url=/SideLine/ManagerServlet?ask=checkmanager");
			 }
		}
	}

}
