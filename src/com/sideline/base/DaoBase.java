package com.sideline.base;


import java.io.File;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.sideline.util.MysqlLink;


public class DaoBase<T>{
	private Class<T> clazz;
	private String tableName;// 表名
	@SuppressWarnings("unchecked")
	public DaoBase() {
		// 获得该类type
		Type type = this.getClass().getGenericSuperclass();
		// 判断该类是否继承parameterizedType接口
		if (!(type instanceof ParameterizedType)) {
			type = Object.class;
		}
		// 如果实现该接口 就获去该类的第一个泛型参数(子类class)
		clazz = (Class<T>) ((ParameterizedType) type).getActualTypeArguments()[0];
		// 获得表名
		tableName = clazz.getSimpleName().toLowerCase();
	}
	// 根据id查询find
		@SuppressWarnings("unchecked")
		public T selectById(String str) throws Exception {
			// 获得子类所有的属性
			Field[] fields = clazz.getDeclaredFields();
			String sql = "select * from " + tableName + " where " + fields[1].getName() + "=?";
			List<T> list = executeFindSql(sql, str);
			if (list.size() > 0) {
				return (T) list.toArray()[0];
			} else {
				return null;
			}
		}
		//根据用户名查询所有
		public T selectId(String username) throws Exception{
			//获得子类所有的属性
			Field[] fields=clazz.getDeclaredFields();				
			String sql="select * from "+tableName+" where "+fields[1].getName()+"=?;";	
			List<T> list=executeFindSql(sql, username);
			if(list.size()>0){
				return  (T) list;
			}else{
				return null;
			}
			
		}
		//根据ID查询个人简历的所有信息
		public T findId(String username) throws Exception{
			//获得子类所有的属性
			Field[] fields=clazz.getDeclaredFields();				
			String sql="select * from "+tableName+" where "+fields[0].getName()+"=?;";	
			List<T> list=executeFindSql(sql, username);
			if(list.size()>0){
				return  (T) list;
			}else{
				return null;
			}
			
		}
		//查询所有
		public List<T> selectAll() throws Exception {
			// 获得子类所有的属性
			Field[] fields = clazz.getDeclaredFields();
			String sql = "select * from " + tableName;
			List<T> list = executeFindSql(sql);
			if (list.size() > 0) {
				return list;
			} else {
				return null;
			}
		}

		
		
		
		
		// 执行查询语句
		public List<T> executeFindSql(String sql, Object... obj) throws InstantiationException, IllegalAccessException {
			List<T> list = new ArrayList<T>();
			try {
				PreparedStatement ps = (PreparedStatement) MysqlLink.conn.prepareStatement(sql);
				for (int i = 0; i < obj.length; i++) {
					ps.setString(i + 1, obj[i].toString()); // 将要查询的关键字加入到sql语句中
				}
				ResultSet rs = ps.executeQuery();
				Field[] fields = clazz.getDeclaredFields();
				while (rs.next()) {
					T t = (T) clazz.newInstance();
					for (int i = 0; i < fields.length; i++) {
						String str = rs.getString(fields[i].getName());
						fields[i].setAccessible(true);
						fields[i].set(t, str);
					}
					list.add(t);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return list;
		}
		
		// 插入add
		public boolean add(T t) throws SQLException {
			// 获得子类所有的属性
			Field[] fields = clazz.getDeclaredFields();
			String attribute = "";// 属性名
			String placeholder = "";// 占位符
			for (int i = 0; i < fields.length; i++) {
				attribute = attribute + fields[i].getName();
				placeholder = placeholder + "?";
				if (i == fields.length - 1) {
					continue;
				}
				attribute = attribute + ",";
				placeholder = placeholder + ",";
			}
			String sql = "insert into " + tableName + " (" + attribute + ") values(" + placeholder + ")";
			PreparedStatement ps = (PreparedStatement) MysqlLink.conn.prepareStatement(sql);
			// 给占位符赋值
			for (int i = 0; i < fields.length; i++) {
				try {
					Method method = clazz.getMethod(getGetOrSetMethodName("get", fields[i]));
					ps.setString(i + 1, (String) method.invoke(t));

				} catch (Exception e) {
					// TODO: handle exception
				}
			}
			int ok = ps.executeUpdate();
			if (ok == 1) {
				return true;
			} else {
				return false;
			}
		}

		
		// 修改update
		public boolean updateEntity(T t) throws Exception {
			int count = 0;
			// 获得子类所有的属性
			Field[] fields = clazz.getDeclaredFields();
			String setSentence = "";
			for (int i = 1; i < fields.length; i++) {
				setSentence = setSentence + fields[i].getName() + "=?";
				if (i == fields.length - 1) {
					continue;
				}
				setSentence = setSentence + ",";
			}
			String sql = "update " + tableName + " set " + setSentence + " where " + fields[0].getName() + "=?";
			// 给占位符赋值
			try {
				PreparedStatement ps = (PreparedStatement) MysqlLink.conn.prepareStatement(sql);
				for (int i = 1; i < fields.length; i++) {
					Method method = clazz.getMethod(getGetOrSetMethodName("get", fields[i]));
					ps.setString(i, (String) method.invoke(t));
				}
				Method method = clazz.getMethod(getGetOrSetMethodName("get", fields[0]));
				ps.setString(fields.length, (String) method.invoke(t));
				count = ps.executeUpdate();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			if (count == 1) {
				return true;
			} else {
				return false;
			}
		}
		// 根据preMethod（方法前缀get或set）获得属性的get或set方法名称,
		public String getGetOrSetMethodName(String preMethod, Field field) {
			String backName = field.getName().substring(0, 1).toUpperCase() + field.getName().substring(1);
			return preMethod + backName;
		}
		
		

		// 删除delete
		public boolean deleteById(String  id) {
			// 获得子类所有的属性
			Field[] fields = clazz.getDeclaredFields();
			String sql = "delete from " + tableName + " where " + fields[0].getName() + "=?";
			if (executeSql(sql, id) == 1) {
				return true;
			} else {
				return false;
			}
		}

		// 执行增删改sql语句
		public int executeSql(String sql, Object... objects) {
			int count = 0;
			try {
				PreparedStatement ps = (PreparedStatement) MysqlLink.conn.prepareStatement(sql);
				for (int i = 0; i < objects.length; i++) {
					ps.setString(i + 1, objects[i].toString());
				}
				count = ps.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return count;
		}
		
		
		
}
