package com.sideline.service;

import java.util.ArrayList;
import java.sql.SQLException;
import java.util.List;
import com.sideline.dao.ReaumeDao;
import com.sideline.entity.Reaume;

import com.sideline.entity.User;

public class ReaumeService {
	
	public List<Reaume> fingByname(String username) throws Exception {
		return new ReaumeDao().fingByname(username);
	}
	public List<Reaume> fingByid(String id) throws Exception {
		return new ReaumeDao().fingByid(id);
	}
	public boolean deleteId(String id) {
		return new ReaumeDao().deleteId(id);
	}

	public boolean update(Reaume reaume) throws Exception {
		return new ReaumeDao().update(reaume);
	}
/////////////////////
	public boolean writeReaume(Reaume reaume) throws SQLException {	//填写个人简历
		return new ReaumeDao().writereaume(reaume);
	}
	
	public Reaume selectOnesReaume(User user) throws Exception{	//查找个人发出的最新简历
		return new ReaumeDao().selectOnes(user);
	}
	
}
