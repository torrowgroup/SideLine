package com.sideline.dao;

import com.sideline.base.DaoBase;
import com.sideline.entity.Hire;

public class HireDao extends DaoBase<Hire>{

	public Hire fingByname(String username) {
		String sql="select * from hire where seekerusername='"+username+"'";
		return null;
	}

}
