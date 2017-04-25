package com.sideline.service;

import java.sql.SQLException;
import java.util.List;

import com.sideline.dao.RecruitDao;
import com.sideline.entity.Recruit;
import com.sideline.entity.User;

public class RecruitService {

	public List<Recruit> selectRecruit(User user) throws Exception {	//根据求职者填写的简历工作推荐招聘
		return new RecruitDao().selectRecruit(user);
	}
	
	public List<Recruit> selectAllowRecruit() throws Exception {	//查询所有的招聘信息,允许发布的
		return new RecruitDao().selectAllowRecruit();
	}
	
	public List<Recruit> selectNotAllowRecruit() throws Exception {	//查询所有的等待审核的招聘信息
		return new RecruitDao().selectAllowRecruit();
	}
	
	public boolean addRecruit(Recruit recruit) throws SQLException {	//发布招聘信息
		return new RecruitDao().addRecruit(recruit);
	}

	public Recruit selectRecruitId(String recruitId) throws Exception {   //根据Id查询特定一个招聘表
		return new RecruitDao().selectRecruitId(recruitId);
	}
	
}
