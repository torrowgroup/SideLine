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

@WebServlet("/HireServlet")
public class HireServlet extends HttpServlet {
	
	//推送基本完成
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String username = (String) request.getSession().getAttribute("username");
    	String hirePrompt = null;
    	User user = new User();
    	user.setUsername(username);
    	String ask = request.getParameter("ask");
    	String forward = null;
    	if(ask.equals("apply")){	//请求为申请工作
    		String recruitId = request.getParameter("recruitId");	//得到招聘表ID
    		System.out.println(recruitId+"recruitId");
    		hirePrompt = "申请失败，不符合要求";
    		try {
				Recruit recruit = new RecruitService().selectRecruitId(recruitId);
				String unit = recruit.getUnit();
				System.out.println(recruit+" recruit"+unit);
				String unitusername = recruit.getUsername();
				Reaume reaume = new ReaumeService().selectOnesReaume(user);	//查找出用户最新的简历
				String seekerId = reaume.getId();
				Hire hire = new Hire(recruitId,unit,unitusername,seekerId,username,null,null,"否");
				boolean boo = new HireService().addHire(hire);
				boolean booo = new RecruitService().deleteId(recruitId);
				if(boo&&booo){
					hirePrompt = "申请成功，请联系招聘人";
				}
				List<Recruit> lists = new RecruitService().selectAllowRecruit();	//查找出所有的允许发布的招聘表
				request.setAttribute("recommend", lists);
			} catch (Exception e) {
				e.printStackTrace();
			}
    		forward = "/WEB-INF/jsp/selectrecruit.jsp";	/////
    	} else if(ask.equals("check")){	//审核招聘表，求职表   管理员
    		try {
				List<Recruit> lists = new RecruitService().selectNotAllowRecruit();
				request.setAttribute("checkRecruit", lists);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
    	} 
    	else if(ask.equals("checkall")){
    		try {
				List<Hire> lists = new HireService().selectAllowRecruit();
				request.setAttribute("lists", lists);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
    		forward = "/WEB-INF/jsp/allhire.jsp";

    	}
    	
    	
    	
    	else if(ask.equals("checkhire")||ask.equals("finish")){	//查找个人工作经历
    		try {
    			if(ask.equals("finish")){	//商家确认工作已完成
			    	String hireid = request.getParameter("id");
			    	int count = new HireService().finish(hireid);
			   		hirePrompt = "确认完成失败";
			   		if(count==1){
			   			hirePrompt = "确认完成成功，工作结束";
			   		}
				}
				List<Hire> lists1 = new HireService().selectOnesHire1(user);
				List<Hire> lists2 = new HireService().selectOnesHire2(user);
				List<Hire> lists3 = new HireService().selectOnesHire3(user);
				List<Hire> lists4 = new HireService().selectOnesHire4(user);
				request.setAttribute("oneselfHires1", lists1);
				request.setAttribute("oneselfHires2", lists2);
				request.setAttribute("oneselfHires3", lists3);
				request.setAttribute("oneselfHires4", lists4);
				forward = "/WEB-INF/jsp/oneselfhire.jsp";
			} catch (Exception e) {
				e.printStackTrace();
			}
    	} else if(ask.equals("writeunitremark")){	//招聘者填写评语
    		String id = request.getParameter("id");
    		request.setAttribute("id", id);
    		forward = "/WEB-INF/jsp/unitremark.jsp";
    	} else if(ask.equals("writeseekerremark")){	//求职者填写评语
    		String id = request.getParameter("id");
    		request.setAttribute("id", id);
    		forward = "/WEB-INF/jsp/seekerremark.jsp";
    	}
    	
    	request.setAttribute("hirePrompt", hirePrompt);
    	request.getRequestDispatcher(forward).forward(request, response);
	}

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");	//得到填写的是那个招聘表的id
		String remark = request.getParameter("remark");
		Hire hire = new Hire();
		hire.setId(id);
		String ask = request.getParameter("ask");
		String hirePrompt = "填写失败";
		String forward = null;
		int count = 0;
		if(ask.equals("unitremark")){	//招聘者填写的评语
			hire.setUnitremark(remark);
			count = new HireService().unitRemark(hire);
			forward = "/WEB-INF/jsp/unitremark.jsp";
		} else if(ask.equals("seekerremark")){  //求职者填写的评语
			hire.setSeekerremark(remark);
			count = new HireService().seekerRemark(hire);
			forward = "/WEB-INF/jsp/seekerremark.jsp";
		}
		if(count == 1){
			hirePrompt = "填写成功";
		}
		System.out.println(ask+" "+forward+" "+count);
		request.setAttribute("hirePrompt", hirePrompt);
		request.getRequestDispatcher(forward).forward(request, response);
	}

}
