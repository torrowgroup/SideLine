package com.sideline.dao;

import com.sideline.base.DaoBase;
import com.sideline.entity.Hire;
import com.sideline.entity.User;
import com.sideline.entity.Reaume;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class HireDao extends DaoBase<Hire> {


	public boolean addHire(Hire hire) throws SQLException {	//添加雇佣关系
		return this.add(hire);
	}


	public List<Hire> selectOnesHire1(User user) throws Exception {	//查找工作经历。身为招聘者,未完成的
		String username = user.getUsername();
		String sql1 = "select * from hire where unitusername='"+username+"'and finish='否'";
		List<Hire> lists1 = this.executeFindSql(sql1);
		return lists1;
	}

	public List<Hire> selectOnesHire2(User user) throws Exception {		//查找工作经历。身为求职者,未完成的
		String username = user.getUsername();
		String sql2 = "select * from hire where seekerusername='"+username+"'and finish='否'";
		List<Hire> lists2 = this.executeFindSql(sql2);
		return lists2;
	}
	
	public List<Hire> selectOnesHire3(User user) throws Exception {	//查找工作经历。身为招聘者,已完成的
		String username = user.getUsername();
		String sql1 = "select * from hire where unitusername='"+username+"'and finish='是'";
		List<Hire> lists1 = this.executeFindSql(sql1);
		return lists1;
	}

	public List<Hire> selectOnesHire4(User user) throws Exception {		//查找工作经历。身为求职者,以完成的
		String username = user.getUsername();
		String sql2 = "select * from hire where seekerusername='"+username+"'and finish='是'";
		List<Hire> lists2 = this.executeFindSql(sql2);
		return lists2;
	}
	
	public int finish(String hireid) {	///确认工作已完成
		String sql = "update hire set finish = '是 ' where id= '"+hireid+"'";
		System.out.println(sql);
		return this.executeSql(sql);
	}


	public int unitRemark(Hire hire) throws Exception {	//商家填写评价
		String id = hire.getId();
		String unitremark = hire.getUnitremark();
		String sql1 = "select * from hire where id = '"+id+"'";
		List<Hire> lists2 = this.executeFindSql(sql1);
		String str = lists2.get(0).getUnitremark();
		if(str!=null){
			unitremark = str+unitremark;	
		}
		String sql = "update hire set unitremark = '"+unitremark+" ' where id= '"+id+"'";
		return this.executeSql(sql);
	}


	public int seerkerRemark(Hire hire) throws Exception {
		String id = hire.getId();
		String seekerremark = hire.getSeekerremark();
		String sql1 = "select * from hire where id = '"+id+"'";
		List<Hire> lists2 = this.executeFindSql(sql1);
		String str = lists2.get(0).getSeekerremark();
		if(str!=null){
			seekerremark = str+seekerremark;	
		}
		String sql = "update hire set seekerremark = '"+seekerremark+" ' where id= '"+id+"'";
		return this.executeSql(sql);
	}

	public List<Hire> selectAllowRecruit() throws Exception {
		List<Hire> list =new ArrayList<Hire>();		
		list=(List<Hire>) this.selectAll();
		return list;
	}
}
