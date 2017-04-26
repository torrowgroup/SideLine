package com.sideline.dao;


import java.util.ArrayList;
import java.util.List;

import com.sideline.base.DaoBase;
import com.sideline.entity.Reaume;
import java.sql.SQLException;
import java.util.List;
import com.sideline.entity.Reaume;
import com.sideline.entity.User;

public class ReaumeDao extends DaoBase<Reaume> {
	
	@SuppressWarnings("unchecked")
	//根据自己的用户名查询自己所有的求职时填写的简历
	public List<Reaume> fingByname(String username) throws Exception {
		List<Reaume> list =new ArrayList<Reaume>();		
		list=(List<Reaume>) this.selectId(username);
		return list;
	}
	
	
	public List<Reaume> fingByid(String id) throws Exception {
		List<Reaume> list =new ArrayList<Reaume>();		
		list=(List<Reaume>) this.findId(id);
		return list;
	}
																		//根据所查询简历的页面获取id删除id对应的的简历
	public boolean deleteId(String id) {
		return this.deleteById(id);
	}
																		//根据你所填写的的内容修改你的所改动的简历
	public boolean update(Reaume reaume) throws Exception {
		return this.updateEntity(reaume);
	}
/////////////////////
	public boolean writereaume(Reaume reaume) throws SQLException {	//填写个人简历
		return this.add(reaume);
	}
	
	public Reaume selectOnes(User user) throws Exception{	//根据个人最新简历  
		String username = user.getUsername();
		@SuppressWarnings("unchecked")
		List<Reaume> lists = (List<Reaume>) this.selectId(username);
		Reaume reaume = null;
		if(lists!=null){
			 reaume = lists.get(lists.size()-1);	
		}
		return reaume;
	}

	public List<Reaume> selectall() throws Exception {
		List<Reaume> list =new ArrayList<Reaume>();		
		list=(List<Reaume>) this.selectAll();
		return list;
	}
	
}
