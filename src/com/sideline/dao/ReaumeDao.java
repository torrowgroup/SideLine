package com.sideline.dao;

import java.sql.SQLException;
import java.util.List;

import com.sideline.daobase.DaoBase;
import com.sideline.entity.Reaume;
import com.sideline.entity.User;

public class ReaumeDao extends DaoBase<Reaume> {

	public boolean writereaume(Reaume reaume) throws SQLException {	//填写个人简历
		return this.add(reaume);
	}
	
	public Reaume selectOnes(User user) throws Exception{	//根据个人最新简历  
		String username = user.getUsername();
		List<Reaume> lists = (List<Reaume>) this.selectId(username);
		Reaume reaume = lists.get(lists.size()-1);
		return reaume;
	}
	
}
