package com.sideline.service;

import com.sideline.dao.ManagerDao;
import com.sideline.entity.Manager;

public class ManagerService {

	public int find(Manager manager) throws Exception {
		return new ManagerDao().find(manager);
	}

	public Manager fingByname(String username) throws Exception {
		return new ManagerDao().fingByname(username);
	}

	public boolean update(Manager manager) throws Exception {
		 return new ManagerDao().update(manager);
	}

}
