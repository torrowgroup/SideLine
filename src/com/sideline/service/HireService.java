package com.sideline.service;

import java.sql.SQLException;

import com.sideline.dao.HireDao;
import com.sideline.entity.Hire;

public class HireService {

	public boolean addHire(Hire hire) throws SQLException {		//添加雇佣关系
		return new HireDao().addHire(hire);
	}

}
