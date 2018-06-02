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
	//���ͻ������
	//����
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String username = (String) request.getSession().getAttribute("username");
    	String hirePrompt = null;
    	User user = new User();
    	user.setUsername(username);
    	String ask = request.getParameter("ask");
    	System.out.println(ask);
    	String forward = null;
    	if(ask.equals("apply")){	//����Ϊ���빤��
    		String recruitId = request.getParameter("recruitId");	//�õ���Ƹ��ID
    		System.out.println(recruitId+"recruitId");
    		hirePrompt = "����ʧ�ܣ�������Ҫ��";
    		try {
				Recruit recruit = new RecruitService().selectRecruitId(recruitId);
				String unit = recruit.getUnit();
				System.out.println(recruit+" recruit"+unit);
				String unitusername = recruit.getUsername();
				Reaume reaume = new ReaumeService().selectOnesReaume(user);	//���ҳ��û����µļ���
				if(reaume==null){
					hirePrompt = "����ʧ�ܣ�������д����";
					forward = "/WEB-INF/jsp/allowrecruit.jsp";
				} else {
					String seekerId = reaume.getId();
					Hire hire = new Hire(recruitId,unit,unitusername,seekerId,username,null,null,"��");
					boolean boo = new HireService().addHire(hire);
					//boolean booo = new RecruitService().deleteId(recruitId);
					if(boo){
						hirePrompt = "����ɹ�������ϵ��Ƹ��";
					}
					try {
						List<Recruit>  lists1 = new RecruitService().selectRecruit(user);
						if(lists1==null){
							hirePrompt = "���Ƽ�����";	
							List<Recruit> lists2 = new RecruitService().selectAllowRecruit();
							request.setAttribute("recommend", lists2);
							forward = "/WEB-INF/jsp/selectrecruit.jsp";
						} else {
							for(int i=0;i<lists1.size();i++){
								if(lists1.get(i).getAllow().equals("��")){
									lists1.remove(i);
									i--;
								}
							}
							request.setAttribute("recommend", lists1);
							forward = "/WEB-INF/jsp/selectrecruit.jsp";
						}
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
				} catch (Exception e) {
					e.printStackTrace();
				}
    		forward = "/WEB-INF/jsp/allowrecruit.jsp";
    	} else if(ask.equals("check")){	//�����Ƹ����ְ��   ����Ա
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

    	} else if(ask.equals("checkhire")||ask.equals("finish")){	//���Ҹ��˹�������
    		try {
    			if(ask.equals("finish")){	//�̼�ȷ�Ϲ��������
			    	String hireid = request.getParameter("id");
			    	int count = new HireService().finish(hireid);
			   		hirePrompt = "ȷ�����ʧ��";
			   		if(count==1){
			   			hirePrompt = "ȷ����ɳɹ�����������";
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
    	} else if(ask.equals("writeunitremark")){	//��Ƹ����д����
    		String id = request.getParameter("id");
    		request.setAttribute("id", id);
    		forward = "/WEB-INF/jsp/unitremark.jsp";
    	} else if(ask.equals("writeseekerremark")){	//��ְ����д����
    		String id = request.getParameter("id");
    		request.setAttribute("id", id);
    		forward = "/WEB-INF/jsp/seekerremark.jsp";
    	}
    	else if(ask.equals("checkall")){
    	} else if(ask.equals("checkall")){
    		try {
				List<Hire> lists = new HireService().selectAllowRecruit();
				request.setAttribute("lists", lists);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
    		forward = "/WEB-INF/jsp/allhire.jsp";
    	}
    	request.setAttribute("hirePrompt", hirePrompt);
    	request.getRequestDispatcher(forward).forward(request, response);
	}

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");	//�õ���д�����Ǹ���Ƹ���id
		String remark = request.getParameter("remark");
		Hire hire = new Hire();
		hire.setId(id);
		String ask = request.getParameter("ask");
		System.out.println(id+"id");
		String hirePrompt = "��дʧ��";
		String forward = null;
		int count = 0;
		if(ask.equals("unitremark")){	//��Ƹ����д������
			hire.setUnitremark(remark);
			try {
				count = new HireService().unitRemark(hire);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			forward = "/WEB-INF/jsp/unitremark.jsp";
		} else if(ask.equals("seekerremark")){  //��ְ����д������
			hire.setSeekerremark(remark);
			try {
				count = new HireService().seekerRemark(hire);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			forward = "/WEB-INF/jsp/seekerremark.jsp";
		}
		if(count == 1){
			hirePrompt = "��д�ɹ�";
		}
		System.out.println(ask+" "+forward+" "+count);
		request.setAttribute("hirePrompt", hirePrompt);
		request.getRequestDispatcher(forward).forward(request, response);
	}

}
