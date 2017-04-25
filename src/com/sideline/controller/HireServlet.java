package com.sideline.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sideline.entity.Hire;
import com.sideline.service.HireService;



@WebServlet("/HireServlet")
public class HireServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ask=request.getParameter("ask");
		System.out.println("ask");
		if(ask.equals("checkhire")){
			String username= (String) request.getSession().getAttribute("username");
			Hire list=null;
			try {
				list = new HireService().fingByname(username);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		        request.setAttribute("list",list);
		        request.getRequestDispatcher("/WEB-INF/jsp/Mynews.jsp").forward(request, response);
		}
	}

}
