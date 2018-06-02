package com.sideline.dao;

import com.sideline.base.DaoBase;
import com.sideline.entity.Hire;
import com.sideline.entity.User;
import com.sideline.entity.Reaume;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class HireDao extends DaoBase<Hire> {


	public boolean addHire(Hire hire) throws SQLException {	//��ӹ�Ӷ��ϵ
		return this.add(hire);
	}


	public List<Hire> selectOnesHire1(User user) throws Exception {	//���ҹ�����������Ϊ��Ƹ��,δ��ɵ�
		String username = user.getUsername();
		String sql1 = "select * from hire where unitusername='"+username+"'and finish='��'";
		List<Hire> lists1 = this.executeFindSql(sql1);
		return lists1;
	}

	public List<Hire> selectOnesHire2(User user) throws Exception {		//���ҹ�����������Ϊ��ְ��,δ��ɵ�
		String username = user.getUsername();
		String sql2 = "select * from hire where seekerusername='"+username+"'and finish='��'";
		List<Hire> lists2 = this.executeFindSql(sql2);
		return lists2;
	}
	
	public List<Hire> selectOnesHire3(User user) throws Exception {	//���ҹ�����������Ϊ��Ƹ��,����ɵ�
		String username = user.getUsername();
		String sql1 = "select * from hire where unitusername='"+username+"'and finish='��'";
		List<Hire> lists1 = this.executeFindSql(sql1);
		return lists1;
	}

	public List<Hire> selectOnesHire4(User user) throws Exception {		//���ҹ�����������Ϊ��ְ��,����ɵ�
		String username = user.getUsername();
		String sql2 = "select * from hire where seekerusername='"+username+"'and finish='��'";
		List<Hire> lists2 = this.executeFindSql(sql2);
		return lists2;
	}
	
	public int finish(String hireid) {	///ȷ�Ϲ��������
		String sql = "update hire set finish = '�� ' where id= '"+hireid+"'";
		System.out.println(sql);
		return this.executeSql(sql);
	}


	public int unitRemark(Hire hire) throws Exception {	//�̼���д����
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
