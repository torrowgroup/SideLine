package com.sideline.service;

import java.util.ArrayList;
import java.util.List;

import com.sideline.dao.ReaumeDao;
import com.sideline.dao.RecruitDao;
import com.sideline.entity.Recruit;


public class RecruitService {

	public List<Recruit> fingByname(String username) throws Exception {
		
		return new RecruitDao().fingByname(username);
	}

	public boolean deleteId(String id) {
		return new RecruitDao().deleteId(id);
	}

	public boolean update(Recruit recruit) throws Exception {
		 return new RecruitDao().update(recruit);
	}

	
}
