package com.sideline.service;

import com.sideline.dao.UserDao;
import com.sideline.entity.User;


public class UserService {

	public int findbyId(User user) throws Exception {
		return new UserDao().findbyId(user);
	}

	public User fingByname(String username) throws Exception {
		return new UserDao().fingByname(username);
	}

	public boolean update(User user) throws Exception {
		 return new UserDao().update(user);
	}

	public String findbyname(User user) throws Exception {
		return new UserDao().findbyname(user);
	}

	public String findbyanswer(User user) throws Exception {
		return new UserDao().findbyanswer(user);
	}

}
