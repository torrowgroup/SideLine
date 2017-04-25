package com.sideline.dao;

import java.sql.SQLException;
import java.util.List;

import com.sideline.daobase.DaoBase;
import com.sideline.entity.Reaume;
import com.sideline.entity.Recruit;
import com.sideline.entity.User;

public class RecruitDao extends DaoBase<Recruit> {

	public List<Recruit> selectRecruit(User user) throws Exception {		//根据求职者填写的简历工作推荐招聘
		
		Reaume lists = new ReaumeDao().selectOnes(user);	//得到用户发布的最新简历
		List<Recruit> lists1 = null;
		if(lists!=null){	//如果提交过简历
			String skill = lists.getSkill();	//得到最后提交的简历表推荐
			String sql = "select * from Recruit where work = "+skill;
			lists1 = executeFindSql(sql);
		}
		return lists1;
	}
	public List<Recruit> selectAllowRecruit() throws Exception {		//查找所有的允许发布的招聘表
		 List<Recruit> lists =   this.selectAll();
		 for(int i=0;i<lists.size();i++){
			 if(lists.get(i).getAllow().equals("否")){
				 lists.remove(i);
			 }
		 }
		return lists;
	}
	public boolean addRecruit(Recruit recruit) throws SQLException {	//发布招聘信息
		return this.add(recruit);
	}
	public Recruit selectRecruitId(String recruitId) throws InstantiationException, IllegalAccessException {	 //根据id查询特定的招聘表
		String sql = "select * from Reaume where id="+recruitId;
		return (Recruit) this.executeFindSql(sql);
	}
}
