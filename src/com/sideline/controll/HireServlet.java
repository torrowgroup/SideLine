package com.sideline.controll;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sideline.entity.Hire;
import com.sideline.entity.Reaume;
import com.sideline.entity.Recruit;
import com.sideline.entity.User;
import com.sideline.service.HireService;
import com.sideline.service.ReaumeService;
import com.sideline.service.RecruitService;

@WebServlet("/hireServlet")
public class HireServlet extends HttpServlet {
	
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String username = (String) request.getSession().getAttribute("username");
    	String hirePrompt = null;
    	User user = new User();
    	user.setUsername(username);
    	String ask = request.getParameter("ask");
    	String forward = null;
    	if(ask.equals("apply")){	//请求为申请工作
    		String recruitId = request.getParameter("recruitId");	//得到招聘表ID
    		hirePrompt = "申请失败，不符合要求";
    		try {
				Recruit recruit = null;
				try {
					recruit = new RecruitService().selectRecruitId(recruitId);
				} catch (Exception e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				String unit = recruit.getUnit();
				String unitusername = recruit.getUsername();
				try {
					Reaume reaume = new ReaumeService().selectOnesReaume(user);	//查找出用户最新的简历
					String seekerId = reaume.getId();
					Hire hire = new Hire(recruitId,unit,unitusername,seekerId,username,null,null,"否");
					boolean boo = new HireService().addHire(hire);
					if(boo){
						hirePrompt = "申请成功，等待审核";
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
    		forward = "/WEB-INF/jsp/selectrecruit.jsp";
    	} else if(ask.equals("check")){	//审核招聘表，求职表   管理员
    		try {
				List<Recruit> lists = new RecruitService().selectNotAllowRecruit();
				request.setAttribute("checkRecruit", lists);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
    	}
    	request.setAttribute("hirePrompt", hirePrompt);
	}

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
