package com.sideline.dao;

import java.sql.SQLException;

import com.sideline.daobase.DaoBase;
import com.sideline.entity.Hire;

public class HireDao extends DaoBase<Hire> {

	public boolean addHire(Hire hire) throws SQLException {	//添加雇佣关系
		return this.add(hire);
	}
	
}
