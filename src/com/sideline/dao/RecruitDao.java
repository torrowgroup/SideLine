package com.sideline.dao;

import java.util.ArrayList;
import java.util.List;

import com.sideline.base.DaoBase;
import com.sideline.entity.Reaume;
import com.sideline.entity.Recruit;

public class RecruitDao extends DaoBase<Recruit>{

	@SuppressWarnings("unchecked")											//根据你的用户名查询所有你发布过的招聘信息
	public List<Recruit> fingByname(String username) throws Exception {
		List<Recruit> list =new ArrayList<Recruit>();		
		list=(List<Recruit>) this.selectId(username);
		return list;
	}
																			//根据id删除id对应的的招聘信息
	public boolean deleteId(String id) {
		return this.deleteById(id);
	}
																			//根据你所改动招聘信息页面填写的的内容修改你的所想改动的招聘信息
	public boolean update(Recruit recruit) throws Exception {
		return this.updateEntity(recruit);
	}

}
