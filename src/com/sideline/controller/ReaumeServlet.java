package com.sideline.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sideline.entity.Reaume;
import com.sideline.service.ReaumeService;



@WebServlet("/ReaumeServlet")
public class ReaumeServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ask=request.getParameter("ask");
		System.out.println(ask);
		if(ask.equals("checkreaume")||ask.equals("update")){
			String username= (String) request.getSession().getAttribute("username");
			ArrayList list =new ArrayList<Reaume>();		
			try {
				list = (ArrayList) new ReaumeService().fingByname(username);

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		        request.setAttribute("list",list);
		        if(ask.equals("checkreaume")){
		        	 request.getRequestDispatcher("/WEB-INF/jsp/deletreaume.jsp").forward(request, response);
		        }
		        else if(ask.equals("update")){
		        	request.getRequestDispatcher("/WEB-INF/jsp/updatereaume.jsp").forward(request, response);
		        }
		}
		else if(ask.equals("delet")){
			PrintWriter out = response.getWriter();
			String id=request.getParameter("id");
			boolean bool=false;
			try {
				bool = new ReaumeService().deleteId(id);
			} catch (Exception e) {				
				e.printStackTrace();
			}
			if(bool==true){
				out.println("删除成功");
				response.setHeader("refresh", "2;url=/SideLine/ReaumeServlet?ask=checkreaume");	
			}else{
				out.println("删除失败");
				response.setHeader("refresh", "2;url=/SideLine/ReaumeServlet?ask=checkreaume");	
			}
		}
		else if(ask.equals("updatereaume")){
			String id=request.getParameter("id");
			String username=request.getParameter("username");
			String name=request.getParameter("name");
			String age=request.getParameter("age");
			String sex=request.getParameter("sex");
			String location=request.getParameter("location");
			String education=request.getParameter("education");
			String experience=request.getParameter("experience");
			String phone=request.getParameter("phone");
			String skill=request.getParameter("skill");
			String introduce=request.getParameter("introduce");
			String allow=request.getParameter("allow");
			Reaume reaume=new Reaume(id,username,name,age,sex,location,education,experience,phone,skill,introduce,allow);
			boolean bool=false;
			 PrintWriter out = response.getWriter();
			 try {
				bool=new ReaumeService().update(reaume);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			 if(bool=true){
				 out.println("更改成功");
				 response.setHeader("refresh", "2;/SideLine/ReaumeServlet?ask=checkreaume");
			 }
			 else if(bool=false){
				 out.println("更改失败");
				 response.setHeader("refresh", "2;url=/SideLine/ReaumeServlet?ask=update");
			 }
		}
	}

}
