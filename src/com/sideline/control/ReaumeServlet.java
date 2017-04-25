package com.sideline.control;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sideline.entity.Reaume;
import com.sideline.entity.Recruit;
import com.sideline.entity.User;
import com.sideline.service.ReaumeService;
import com.sideline.service.RecruitService;
/**
 * 
 * @author 雨
 *
 */

@WebServlet("/ReaumeServlet")
public class ReaumeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ReaumeServlet() {
        super();
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ask = request.getParameter("ask"); 	//得到前台发送的请求
		String forward = null;	//记录要转发的地址
		if(ask.equals("writereaume")){		//如果请求为我要应聘，搜索下以前是否提交过简历                               
			forward = "/WEB-INF/jsp/writereaume.jsp";
		}
		
		request.getRequestDispatcher(forward).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = (String) request.getSession().getAttribute("username");	//获得登陆者帐号
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String sex = request.getParameter("sex");
		String location = request.getParameter("location");
		String education = request.getParameter("education");
		String experience = request.getParameter("experience");
		String phone = request.getParameter("phone");
		String skill = request.getParameter("skill");
		String introduce = request.getParameter("introduce");
		Reaume reaume = new Reaume(username,name,age,sex,location,education,experience,phone,skill,introduce,"否");
		String reaumePrompt = "填写申请失败";	
		try {
			boolean boo = new ReaumeService().writeReaume(reaume);
			if(boo){
				reaumePrompt = "填写申请成功";
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		request.setAttribute("reaumePrompt", reaumePrompt);	//返回给前台的提示
		request.getRequestDispatcher("/WEB-INF/jsp/writereaume.jsp").forward(request, response);
	}

}
