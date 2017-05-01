package com.sideline.service;

import java.sql.SQLException;
import java.util.List;

import com.sideline.dao.HireDao;
import com.sideline.entity.Hire;
import com.sideline.entity.Recruit;
import com.sideline.entity.User;

public class HireService {

	public boolean addHire(Hire hire) throws SQLException {		//添加雇佣关系
		return new HireDao().addHire(hire);
	}
	public List<Hire> selectOnesHire1(User user) throws Exception {	//查找个人工作,身为招聘者，否
		return new HireDao().selectOnesHire1(user);
	}
	public List<Hire> selectOnesHire2(User user) throws Exception {//查找个人工作,身为求职者，否
		return new HireDao().selectOnesHire2(user);
	}
	public List<Hire> selectOnesHire3(User user) throws Exception {	//查找个人工作,身为招聘者，是
		return new HireDao().selectOnesHire3(user);
	}
	public List<Hire> selectOnesHire4(User user) throws Exception {//查找个人工作,身为求职者，是
		return new HireDao().selectOnesHire4(user);
	}
	public int finish(String hireid) {	//确认完成工作
		return new HireDao().finish(hireid);
	}
	public int unitRemark(Hire hire) throws Exception {	//招聘者填写评价
		return new HireDao().unitRemark(hire);
	}
	public int seekerRemark(Hire hire) throws Exception {	//求职者填写评价
		return new HireDao().seerkerRemark(hire);
	}
	public List<Hire> selectAllowRecruit() throws Exception {
		return new HireDao().selectAllowRecruit();
	}
}
