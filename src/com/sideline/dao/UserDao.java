package com.sideline.dao;

import java.sql.SQLException;

import com.sideline.base.DaoBase;
import com.sideline.entity.User;

public class UserDao extends DaoBase<User>{
																		//用于从登录页面填写的账户查询密码，并匹配密码的正误，正确则登录成功
	public int findbyId(User user) throws Exception {
		int mark = 4;
		String username=user.getUsername();
		String password=user.getPassword();
		User man=this.selectById(username);								//根据账户名查询是否存在密码，有则用于下面密码对比
		if(man==null){
			mark=0;
		}
		else{
			String password1=man.getPassword();							//对比数据库中的密码和登录页面填写的密码是否匹配
			if(password.equals(password1)){
				mark=1;
			}
			else{
				mark=2;
			}
		}
		return mark;
	}
																		//登录成功后以用户名来查询个人资料，并以对象的形式返回查询到的信息
	public User fingByname(String username) throws Exception {
		User user=null;				
		user= this.selectById(username);
		return user;
	}
																		//获取你在修改个人资料填写的内容，用对象的形式传值，更改你在数据库中的个人信息
	public boolean update(User user) throws Exception {
		return this.updateEntity(user);
	}
																		//找回密码功能，根据输入的账户名，在数据库找密保问题，并返回填写答案界面
	public String findbyname(User user) throws Exception {
		String mark=null;
		String username=user.getUsername();
		User man=this.selectById(username);
		if(man==null){
			mark=null;
		}
		else{
			String security=man.getSecurity();
				mark=security;
		}
		return mark;
	}
																		//成功找到密码问题才执行，根据账户找问题答案，并和输入的答案匹配，匹配成功则显示密码
	public String findbyanswer(User user) throws Exception {
		String mark=null;
		String username=user.getUsername();
		String answer=user.getAnswer();
		User man=this.selectById(username);
		if(man==null){
			mark=null;
		}
		else{
			String answer1=man.getAnswer();
			if(answer.equals(answer1)){
				String password=man.getPassword();
				mark=password;
			}
			else{
				mark=null;
			}
			
		}
		return mark;
	}
	public boolean resister(User user) throws Exception {	//注册用户
		String username = user.getUsername();
		User lists = this.selectId(username);
		if(lists==null){
			return this.add(user);	
		}
		return false;
	}

}
