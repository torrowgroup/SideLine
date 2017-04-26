package com.sideline.dao;

import com.sideline.base.DaoBase;
import com.sideline.entity.Hire;
import com.sideline.entity.Reaume;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class HireDao extends DaoBase<Hire> {


	public Hire fingByname(String username) {
		String sql="select * from hire where seekerusername='"+username+"'";
		return null;
	}


	public boolean addHire(Hire hire) throws SQLException {	//添加雇佣关系
		return this.add(hire);
	}


	public List<Hire> selectAllowRecruit() throws Exception {
		List<Hire> list =new ArrayList<Hire>();		
		list=(List<Hire>) this.selectAll();
		return list;
	}
}
