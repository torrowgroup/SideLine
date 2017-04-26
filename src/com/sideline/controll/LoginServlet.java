package com.sideline.controll;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sideline.entity.Recruit;
import com.sideline.entity.User;
import com.sideline.service.RecruitService;
import com.sideline.service.UserService;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ask=request.getParameter("ask");
		System.out.println(ask);
		if(ask.equals("login")){
			String username=request.getParameter("username");
			String password=request.getParameter("password");
			String checkcode=request.getParameter("checkcode");
			checkcode = checkcode.toUpperCase();
			String piccode = (String) request.getSession().getAttribute("piccode");
			String userPrompt="未作处理，请重新尝试";
			if (checkcode.equals(piccode)) {
				int mark = 3;
				User user=new User();
				user.setUsername(username);
				user.setPassword(password);
				try {
					mark=new UserService().findbyId(user);
				} catch (Exception e) {
					e.printStackTrace();
				}
				if(mark==0){
					userPrompt="账号错误，请重新输入";
					request.setAttribute("userPrompt", userPrompt);
					request.getRequestDispatcher("index.jsp").forward(request, response);
				}
				else if(mark==1){
					request.getSession().setAttribute("username", username);
					request.getRequestDispatcher("/WEB-INF/jsp/HomePage.jsp").forward(request, response);
				}
				else if(mark==2){
					userPrompt="密码错误，请重新输入";
					request.setAttribute("userPrompt", userPrompt);
					request.getRequestDispatcher("index.jsp").forward(request, response);
				}
			}
			else{
				userPrompt="验证码错误，请重新输入";
				request.setAttribute("userPrompt", userPrompt);
				request.getRequestDispatcher("index.jsp").forward(request, response);
			}
		}
		else if(ask.equals("appeal")){
			String userPrompt="未作处理，请重新尝试";
			String username=request.getParameter("username");
			String  mark = "未做处理请返回";
			User user=new User();
			user.setUsername(username);
			try {
				mark=new UserService().findbyname(user);
				System.out.println(mark+"mark");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(mark==null){
				userPrompt="无此账号或无密保问题，请重新输入";
				request.setAttribute("userPrompt", userPrompt);
				request.getRequestDispatcher("appeal.jsp").forward(request, response);
			}
			else if(!(mark.equals(null))){
				 request.getSession().setAttribute("username", username);
				 request.getSession().setAttribute("security", mark);
					//request.getRequestDispatcher("/StuServlet/AmendStuServlet").forward(request, response);
				request.getRequestDispatcher("/WEB-INF/jsp/question.jsp").forward(request, response);
			}
		}
		else if(ask.equals("answer")){
			String username = (String) request.getSession().getAttribute("username");
			String answer=request.getParameter("answer");
			String userPrompt="未作处理，请重新尝试";
			String  mark = null;
			User user=new User();
			user.setUsername(username);
			user.setAnswer(answer);
			try {
				mark=new UserService().findbyanswer(user);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(mark==null){
				userPrompt="密保答案错误，请重新输入";
				request.setAttribute("userPrompt", userPrompt);
				request.getRequestDispatcher("appeal.jsp").forward(request, response);
			}
			else if(!(mark.equals(null))){
				 request.getSession().setAttribute("username", username);
				 userPrompt=mark;
				 request.setAttribute("userPrompt", userPrompt);
				request.getRequestDispatcher("/WEB-INF/jsp/question.jsp").forward(request, response);
			}
		}
	}
}
