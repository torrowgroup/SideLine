package com.sideline.service;

import java.sql.SQLException;
import java.util.List;

import com.sideline.dao.ReaumeDao;
import com.sideline.entity.Reaume;
import com.sideline.entity.User;

public class ReaumeService {

	public boolean writeReaume(Reaume reaume) throws SQLException {	//填写个人简历
		return new ReaumeDao().writereaume(reaume);
	}
	
	public Reaume selectOnesReaume(User user) throws Exception{	//查找个人发出的最新简历
		return new ReaumeDao().selectOnes(user);
	}
	
}
