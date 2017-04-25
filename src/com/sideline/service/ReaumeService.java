package com.sideline.service;

import java.util.ArrayList;
import java.util.List;

import com.sideline.dao.ReaumeDao;
import com.sideline.entity.Reaume;

public class ReaumeService {

	public List<Reaume> fingByname(String username) throws Exception {
		return new ReaumeDao().fingByname(username);
	}

	public boolean deleteId(String id) {
		return new ReaumeDao().deleteId(id);
	}

	public boolean update(Reaume reaume) throws Exception {
		 return new ReaumeDao().update(reaume);
	}
	
}
