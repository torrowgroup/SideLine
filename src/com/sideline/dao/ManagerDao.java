package com.sideline.dao;

import com.sideline.base.DaoBase;
import com.sideline.entity.Manager;
import com.sideline.entity.User;

public class ManagerDao extends DaoBase<Manager>{
																			//用于从登录页面填写的账户查询密码，并匹配密码的正误，正确则登录成功
	public int find(Manager manager) throws Exception {
		int mark = 4;
		String username=manager.getUsername();
		String password=manager.getPassword();
		Manager man=this.selectById(username);								//根据账户名查询是否存在密码，有则用于下面密码对比
		if(man==null){
			mark=0;
		}
		else{
			String password1=man.getPassword();								//对比数据库中的密码和登录页面填写的密码是否匹配
			if(password.equals(password1)){
				mark=1;
			}
			else{
				mark=2;
			}
		}
		return mark;
	}

	public Manager fingByname(String username) throws Exception {
		Manager manager=null;				
		manager= this.selectById(username);
		return manager;
	}

	public boolean update(Manager manager) throws Exception {
		return this.updateEntity(manager);
	}

}
