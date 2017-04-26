package com.sideline.service;

import java.util.List;
import java.util.ArrayList;

import com.sideline.dao.ReaumeDao;
import com.sideline.dao.RecruitDao;
import com.sideline.entity.Recruit;


import com.sideline.dao.RecruitDao;
import com.sideline.entity.Recruit;
import com.sideline.entity.User;

public class RecruitService {

	public List<Recruit> fingByname(String username) throws Exception {
		
		return new RecruitDao().fingByname(username);
	}
	public List<Recruit> fingByid(String id) throws Exception {
		return new RecruitDao().fingByid(id);
	}
	public boolean deleteId(String id) {
		return new RecruitDao().deleteId(id);
	}

	public boolean update(Recruit recruit) throws Exception {
		 return new RecruitDao().update(recruit);
	}
/////////////////////
	public List<Recruit> selectRecruit(User user) throws Exception {	//根据求职者填写的简历工作推荐招聘
		return new RecruitDao().selectRecruit(user);
	}
	
	public List<Recruit> selectAllowRecruit() throws Exception {	//查询所有的招聘信息,允许发布的
		return new RecruitDao().selectAllowRecruit();
	}
	
	public List<Recruit> selectNotAllowRecruit() throws Exception {	//查询所有的等待审核的招聘信息
		return new RecruitDao().selectNotAllowRecruit();
	}
	
	public boolean addRecruit(Recruit recruit) throws Exception {	//发布招聘信息
		return new RecruitDao().addRecruit(recruit);
	}

	public Recruit selectRecruitId(String recruitId) throws Exception {   //根据Id查询特定一个招聘表
		return new RecruitDao().selectRecruitId(recruitId);
	}
}
