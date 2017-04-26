package com.sideline.service;

import java.sql.SQLException;
import java.util.List;

import com.sideline.dao.HireDao;
import com.sideline.entity.Hire;

public class HireService {

	public Hire fingByname(String username) {
		return new HireDao().fingByname(username);
	}
	public boolean addHire(Hire hire) throws SQLException {		//添加雇佣关系
		return new HireDao().addHire(hire);
	}
	public List<Hire> selectAllowRecruit() throws Exception {
		return new HireDao().selectAllowRecruit();
	}
}
