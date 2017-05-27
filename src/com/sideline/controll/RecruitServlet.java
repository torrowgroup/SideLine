package com.sideline.controll;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sideline.entity.Recruit;
import com.sideline.entity.User;
import com.sideline.service.RecruitService;

@WebServlet("/RecruitServlet")
public class RecruitServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String ask = request.getParameter("ask");
		String username = (String) request.getSession().getAttribute("username");
		System.out.println(ask);
		String forward = null;	//记录要转发的地址
		String recruitPrompt = "";	//记录发送到前台的提示
		if (ask.equals("checkrecruit")) {	//查看招聘表，修改招聘表
			System.out.println(username);
			ArrayList list = new ArrayList<Recruit>();
			try {
				list = (ArrayList) new RecruitService().fingByname(username);
			} catch (Exception e) {
				e.printStackTrace();
			}
			request.setAttribute("list", list);
			forward = "/WEB-INF/jsp/deletrecruit.jsp";
		} else if( ask.equals("update")){
			String id=request.getParameter("id");
			ArrayList list = new ArrayList<Recruit>();
			try {
				list = (ArrayList) new RecruitService().fingByid(id);
			} catch (Exception e) {
				e.printStackTrace();
			}
			request.setAttribute("list", list);
			forward = "/WEB-INF/jsp/updaterecruit.jsp";
		} else if(ask.equals("verifyrecruit")){
			ArrayList list = new ArrayList<Recruit>();
			try {
				list = (ArrayList) new RecruitService().selectNotAllowRecruit();
			} catch (Exception e) {
				e.printStackTrace();
			}
			request.setAttribute("list", list);
			forward = "/WEB-INF/jsp/norecruit.jsp";
		} else if (ask.equals("delet")) {
			PrintWriter out = response.getWriter();
			String id = request.getParameter("id");
			boolean bool = false;
			try {
				bool = new RecruitService().deleteId(id);
			} catch (Exception e) {
				e.printStackTrace();
			}
			if (bool == true) {
				out.println("删除成功");
				response.setHeader("refresh", "2;url=/SideLine/RecruitServlet?ask=checkrecruit");
			} else {
				out.println("删除失败");
				response.setHeader("refresh", "2;url=/SideLine/RecruitServlet?ask=checkrecruit");
			}
		} else if(ask.equals("recommendjob")){	//请求为查看推荐招聘信息
			User user = new User();
			user.setUsername(username);
			try {
				List<Recruit>  lists = new RecruitService().selectRecruit(user);
				if(lists==null){
					recruitPrompt = "未提交过简历，无法推荐工作，请先填写简历";	//返回首页
					List<Recruit> lists1 = new RecruitService().selectAllowRecruit();
					forward = "/WEB-INF/jsp/selectrecruit.jsp";
				} else {
					for(int i=0;i<lists.size();i++){
						if(lists.get(i).getAllow().equals("否")){
							lists.remove(i);
							i--;
						}
					}
					request.setAttribute("recommend", lists);
					forward = "/WEB-INF/jsp/selectrecruit.jsp";
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			System.out.println(forward+"forward");
		} else if(ask.equals("writerecruit")){		//请求为填写招聘表
			forward = "/WEB-INF/jsp/writerecruit.jsp";
		} else if(ask.equals("selectallowrecruit")){	//首页查看所有发布的招聘表
			try {
				List<Recruit> lists = new RecruitService().selectAllowRecruit();//遍历所有发布的招聘信息
				request.setAttribute("allAllowRecruit", lists);
				forward = "/WEB-INF/jsp/allowrecruit.jsp";
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else if(ask.equals("time")){	//请求为按时间查询
			String time = request.getParameter("time");
			time = new String(time.getBytes("iso8859-1"), "utf-8"); 
			System.out.println(time);
			try {
				List<Recruit> lists = new RecruitService().selectTime(time);
				request.setAttribute("allAllowRecruit", lists);
				forward = "/WEB-INF/jsp/allowrecruit.jsp";
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if(ask.equals("selectbylocation")){	//按地点查询
			String location = new String(request.getParameter("location").getBytes("iso-8859-1"),"utf-8");//获得地点 
			System.out.println(location+"location");
			try {
				List<Recruit> lists = new RecruitService().selectLocation(location);
				request.setAttribute("allAllowRecruit", lists);
				forward = "/WEB-INF/jsp/allowrecruit.jsp";
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		request.setAttribute("recruitPrompt", recruitPrompt);
		request.getRequestDispatcher(forward).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String ask = request.getParameter("ask");
		String username = (String) request.getSession().getAttribute("username");
		String unit = request.getParameter("unit");
		String name = request.getParameter("name");
		String work = request.getParameter("work");
		String requirement = request.getParameter("requirement");
		String phone = request.getParameter("phone");
		String time = request.getParameter("time");
		String location = request.getParameter("location");
		String salary = request.getParameter("salary");
	
		if (ask.equals("updaterecruit")) { //修改招聘表
			String id = request.getParameter("id");
			String allow = request.getParameter("allow");
			Recruit recruit = new Recruit(id, username, unit, name, work, requirement, phone, time, location, salary,
					allow);
			boolean bool = false;
			PrintWriter out = response.getWriter();
			try {
				bool = new RecruitService().update(recruit);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if (bool = true) {
				out.println("更改成功");
				response.setHeader("refresh", "2;/SideLine/RecruitServlet?ask=checkrecruit");
			} else if (bool = false) {
				out.println("更改失败");
				response.setHeader("refresh", "2;url=/SideLine/RecruitServlet?ask=update");
			}
		} else if(ask.equals("updateno")){
			String id = request.getParameter("id");
			Recruit recruit = new Recruit(id, username, unit, name, work, requirement, phone, time, location, salary,"是");
			boolean bool = false;
			PrintWriter out = response.getWriter();
			try {
				bool = new RecruitService().update(recruit);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if (bool = true) {
				out.println("更改成功");
				response.setHeader("refresh", "2;/SideLine/RecruitServlet?ask=verifyrecruit");
			} else if (bool = false) {
				out.println("更改失败");
				response.setHeader("refresh", "2;url=/SideLine/RecruitServlet?ask=verifyrecruit");
			}
		}
	}

}
