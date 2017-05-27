
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

import com.sideline.entity.Reaume;
import com.sideline.entity.Recruit;
import com.sideline.entity.User;
import com.sideline.service.ReaumeService;
import com.sideline.service.RecruitService;



@WebServlet("/ReaumeServlet")
public class ReaumeServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ask=request.getParameter("ask");
		String username= (String) request.getSession().getAttribute("username");
		System.out.println(ask);
		String forward = null;	//记录要转发的地址
		if(ask.equals("writereaume")){		//请求为填写简历	                              
			forward = "/WEB-INF/jsp/writereaume.jsp";
		} else if(ask.equals("recommendjob")){		//如果请求为推荐招聘信息，搜索下以前是否提交过简历 
			try {
				List<Reaume> list = (ArrayList) new ReaumeService().fingByname(username);
				if(list==null){
					forward = "/WEB-INF/jsp/HomePage.jsp";
				} else {
					User user = new User();
					user.setUsername(username);
					List<Recruit> lists = new RecruitService().selectRecruit(user);
					request.setAttribute("recommend", lists);
					forward = "/WEB-INF/jsp/selectrecruit.jsp";
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if(ask.equals("checkreaume")){
			ArrayList list =new ArrayList<Reaume>();		
			try {
				list = (ArrayList) new ReaumeService().fingByname(username);
			} catch (Exception e) {
				e.printStackTrace();
			}
		    request.setAttribute("list",list);
		    forward = "/WEB-INF/jsp/deletreaume.jsp";
		      
		}else if(ask.equals("update")){
			String id=request.getParameter("id");
			ArrayList list =new ArrayList<Reaume>();		
			try {
				list = (ArrayList) new ReaumeService().fingByid(id);

			} catch (Exception e) {
				e.printStackTrace();
			}
		        request.setAttribute("list",list);
		        forward = "/WEB-INF/jsp/updatereaume.jsp";
		}
		
		else if(ask.equals("delet")||ask.equals("deletid")){
			PrintWriter out = response.getWriter();
			String id=request.getParameter("id");
			boolean bool=false;
			try {
				bool = new ReaumeService().deleteId(id);
			} catch (Exception e) {				
				e.printStackTrace();
			}
			if(ask.equals("delet")){
				if(bool==true){
					out.println("删除成功");
					response.setHeader("refresh", "2;url=/SideLine/ReaumeServlet?ask=checkreaume");	
				}else{
					out.println("删除失败");
					response.setHeader("refresh", "2;url=/SideLine/ReaumeServlet?ask=checkreaume");	
				}
			}
			else if(ask.equals("deletid")){
				if(bool==true){
					out.println("删除成功");
					response.setHeader("refresh", "2;url=/SideLine/ReaumeServlet?ask=check");	
				}else{
					out.println("删除失败");
					response.setHeader("refresh", "2;url=/SideLine/ReaumeServlet?ask=check");	
				}
			}
			return;
		}
		
		else if(ask.equals("check")){
			ArrayList<Reaume> list =new ArrayList<Reaume>();		
			try {
				list = (ArrayList<Reaume>) new ReaumeService().selectall();
			} catch (Exception e) {
				e.printStackTrace();
			}
		        request.setAttribute("list",list);
		        forward = "/WEB-INF/jsp/allreaume.jsp";
		}
		request.getRequestDispatcher(forward).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			String ask = request.getParameter("ask");
			String username=(String)request.getSession().getAttribute("username");
			String name=request.getParameter("name");
			String age=request.getParameter("age");
			String sex=request.getParameter("sex");
			String location=request.getParameter("location");
			String education=request.getParameter("education");
			String experience=request.getParameter("experience");
			String phone=request.getParameter("phone");
			String skill=request.getParameter("skill");
			String introduce=request.getParameter("introduce");
			System.out.println(age);
			if(ask.equals("updatereaume")){	//修改简历
				String id=request.getParameter("id");
				Reaume reaume=new Reaume(id,username,name,age,sex,location,education,experience,phone,skill,introduce);
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
			} else if(ask.equals("write")){	//填写简历
				Reaume reaume = new Reaume(username,name,age,sex,location,education,experience,phone,skill,introduce);
				System.out.println(reaume);
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

}
