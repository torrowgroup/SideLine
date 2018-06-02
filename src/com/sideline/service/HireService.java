package com.sideline.service;

import java.sql.SQLException;
import java.util.List;

import com.sideline.dao.HireDao;
import com.sideline.entity.Hire;
import com.sideline.entity.Recruit;
import com.sideline.entity.User;

public class HireService {

	public boolean addHire(Hire hire) throws SQLException {		//��ӹ�Ӷ��ϵ
		return new HireDao().addHire(hire);
	}
	public List<Hire> selectOnesHire1(User user) throws Exception {	//���Ҹ��˹���,��Ϊ��Ƹ�ߣ���
		return new HireDao().selectOnesHire1(user);
	}
	public List<Hire> selectOnesHire2(User user) throws Exception {//���Ҹ��˹���,��Ϊ��ְ�ߣ���
		return new HireDao().selectOnesHire2(user);
	}
	public List<Hire> selectOnesHire3(User user) throws Exception {	//���Ҹ��˹���,��Ϊ��Ƹ�ߣ���
		return new HireDao().selectOnesHire3(user);
	}
	public List<Hire> selectOnesHire4(User user) throws Exception {//���Ҹ��˹���,��Ϊ��ְ�ߣ���
		return new HireDao().selectOnesHire4(user);
	}
	public int finish(String hireid) {	//ȷ����ɹ���
		return new HireDao().finish(hireid);
	}
	public int unitRemark(Hire hire) throws Exception {	//��Ƹ����д����
		return new HireDao().unitRemark(hire);
	}
	public int seekerRemark(Hire hire) throws Exception {	//��ְ����д����
		return new HireDao().seerkerRemark(hire);
	}
	public List<Hire> selectAllowRecruit() throws Exception {
		return new HireDao().selectAllowRecruit();
	}
}
