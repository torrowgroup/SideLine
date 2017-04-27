package com.sideline.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.sideline.base.DaoBase;
import com.sideline.entity.Reaume;
import com.sideline.entity.Recruit;
import com.sideline.entity.User;

public class RecruitDao extends DaoBase<Recruit>{

	@SuppressWarnings("unchecked")											//根据你的用户名查询所有你发布过的招聘信息
	public List<Recruit> fingByname(String username) throws Exception {
		List<Recruit> list =new ArrayList<Recruit>();		
		list=(List<Recruit>) this.selectId(username);
		return list;
	}
	public List<Recruit> fingByid(String id) throws Exception {
		List<Recruit> list =new ArrayList<Recruit>();		
		list=(List<Recruit>) this.findId(id);
		return list;
	}
	//根据查看招聘信息的页面获取id删除id对应的的招聘信息
	public boolean deleteId(String id) {
		return this.deleteById(id);
	}
																			//根据你所改动招聘信息页面填写的的内容修改你的所想改动的招聘信息
	public boolean update(Recruit recruit) throws Exception {
		return this.updateEntity(recruit);
	}
	
////////	
	public List<Recruit> selectRecruit(User user) throws Exception {		//根据求职者填写的简历工作推荐招聘
		
		Reaume lists = new ReaumeDao().selectOnes(user);	//得到用户发布的最新简历
		List<Recruit> lists1 = null;
		if(lists!=null){	//如果提交过简历
			String skill = lists.getSkill();	//得到最后提交的简历表推荐
			String sql = "select * from recruit where work = '"+skill+"'";
			lists1 = executeFindSql(sql);
		}
		return lists1;
	}
	public List<Recruit> selectAllowRecruit() throws Exception {		//查找所有的允许发布的招聘表
		 List<Recruit> lists =   this.selectAll();
		 if(lists!=null){
			 for(int i=0;i<lists.size();i++){
				 if(lists.get(i).getAllow().equals("否")){
					 lists.remove(i);
					 i--;
				 }
			 } 
		 }
		return lists;
	}
	public List<Recruit> selectNotAllowRecruit() throws Exception {		//查找所有的等待审核的招聘表
		 List<Recruit> lists =   this.selectAll();
		 if(lists!=null){
			 for(int i=0;i<lists.size();i++){
				 if(lists.get(i).getAllow().equals("是")){
					 lists.remove(i);
					 i--;
				 }
			 } 
		 }
		return lists;
	}
	public boolean addRecruit(Recruit recruit) throws SQLException {	//发布招聘信息
		return this.add(recruit);
	}
	public Recruit selectRecruitId(String recruitId) throws Exception {	 //根据id查询特定的招聘表
		String sql = "select * from Recruit where id='"+recruitId+"'";
		List<Recruit> lists = (List<Recruit>) this.executeFindSql(sql);
		return lists.get(0);
	}
	public List<Recruit> selectTime(String time) throws Exception {		//请求为按时间查询
		String sql = "select * from Recruit where time ='"+time+"'";
		List<Recruit> lists = (List<Recruit>) this.executeFindSql(sql);
		return lists;
	}
	public List<Recruit> selectDirection(String location) throws Exception {	//请求为按地点查询
		String sql = "select * from Recruit where location ='"+location+"'";
		List<Recruit> lists = (List<Recruit>) this.executeFindSql(sql);
		return lists;
	}
}
