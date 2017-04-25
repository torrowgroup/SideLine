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
import com.sideline.entity.Recruit;
import com.sideline.service.ReaumeService;
import com.sideline.service.RecruitService;

@WebServlet("/RecruitServlet")
public class RecruitServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ask=request.getParameter("ask");
		System.out.println(ask);
		if(ask.equals("checkrecruit")||ask.equals("update")){
			String username= (String) request.getSession().getAttribute("username");
			System.out.println(username);
			ArrayList list =new ArrayList<Recruit>();		
			try {
				list = (ArrayList) new RecruitService().fingByname(username);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		        request.setAttribute("list",list);
		        if(ask.equals("checkrecruit")){
		        	 request.getRequestDispatcher("/WEB-INF/jsp/deletrecruit.jsp").forward(request, response);
		        }
		        else if(ask.equals("update")){
		        	request.getRequestDispatcher("/WEB-INF/jsp/updaterecruit.jsp").forward(request, response);
		        }
		}
		else if(ask.equals("delet")){
			PrintWriter out = response.getWriter();
			String id=request.getParameter("id");
			boolean bool=false;
			try {
				bool = new RecruitService ().deleteId(id);
			} catch (Exception e) {				
				e.printStackTrace();
			}
			if(bool==true){
				out.println("删除成功");
				response.setHeader("refresh", "2;url=/SideLine/RecruitServlet?ask=checkrecruit");	
			}else{
				out.println("删除失败");
				response.setHeader("refresh", "2;url=/SideLine/RecruitServlet?ask=checkrecruit");	
			}
		}
		else if(ask.equals("updaterecruit")){
			String id=request.getParameter("id");
			String username=request.getParameter("username");
			String unit=request.getParameter("unit");
			String name=request.getParameter("name");
			String work=request.getParameter("work");
			String requirement=request.getParameter("requirement");
			String phone=request.getParameter("phone");
			String time=request.getParameter("time");
			String location=request.getParameter("location");
			String salary=request.getParameter("salary");
			String allow=request.getParameter("allow");
			Recruit recruit=new Recruit(id,username,unit,name,work,requirement,phone,time,location,salary,allow);
			boolean bool=false;
			 PrintWriter out = response.getWriter();
			 try {
				bool=new RecruitService().update(recruit);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			 if(bool=true){
				 out.println("更改成功");
				 response.setHeader("refresh", "2;/SideLine/RecruitServlet?ask=checkrecruit");
			 }
			 else if(bool=false){
				 out.println("更改失败");
				 response.setHeader("refresh", "2;url=/SideLine/RecruitServlet?ask=update");
			 }
		}
	}

}
