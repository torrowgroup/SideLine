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

@WebServlet("/RecruitServlet")
public class RecruitServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public RecruitServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = (String) request.getSession().getAttribute("username");//得到用户名
		String ask = request.getParameter("ask"); 	//得到前台发送的请求
		String forward = null;	//记录要转发的地址
		String recruitPrompt = "";	//记录发送到前台的提示
		if(ask.equals("selectrecruit")){	//请求为查看推荐招聘信息
			User user = new User();
			user.setUsername(username);
			try {
				List<Recruit>  lists = new RecruitService().selectRecruit(user);
				if(lists==null){
					recruitPrompt = "未提交过简历，无法推荐工作，请先填写简历";	//返回首页
					List<Recruit> lists1 = new RecruitService().selectAllRecruit();
					forward = "/WEB-INF/jsp/homepage.jsp";
				} else {
					request.setAttribute("recommend", lists);
					forward = "/WEB-INF/jsp/selectrecruit.jsp";
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if(ask.equals("writerecruit")){		//请求为我要招聘
			forward = "/WEB-INF/jsp/writerecruit.jsp";
		}
		request.setAttribute("recruitPrompt", recruitPrompt);
		request.getRequestDispatcher(forward).forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = (String) request.getSession().getAttribute("username");
		String unit = request.getParameter("unit");
		String name = request.getParameter("name");
		String work = request.getParameter("work");
		String requirement = request.getParameter("requirement");//实践经验要求
		String phone = request.getParameter("phone");
		String time = request.getParameter("time");
		String location = request.getParameter("location");
		String salary = request.getParameter("salary");
		Recruit recruit = new Recruit(username,unit,name,work,requirement,phone,time,location,salary,"否");
		String recruitPrompt = "填写失败";
		try {
			boolean boo = new RecruitService().addRecruit(recruit);
			if(boo){
				recruitPrompt = "填写成功，等待管理员审核";
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		request.setAttribute("recruitPrompt", recruitPrompt);
		request.getRequestDispatcher("/WEB-INF/jsp/writerecruit.jsp").forward(request, response);
	}

}
