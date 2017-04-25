package com.sideline.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class MysqlLink {
	public static Connection conn=null;	
	public void getLink(){			
		try {
			 String driver="com.mysql.jdbc.Driver";
	    	 String url="jdbc:mysql://localhost/sideline?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull";
	    	 String user="root";
	    	 String password="root";	
	    	 Class.forName(driver);//加载数据库驱动
	         conn=DriverManager.getConnection(url,user,password);//获取数据库连接
											
			 if (conn != null) {
					System.out.println("数据库连接成功");
			 }
		  } 
		  catch (Exception e) {
			  System.out.println("数据库连接失败");
			  e.printStackTrace();
		  }
	}	
	public static void main(String[] args) {
		MysqlLink S= new MysqlLink();
		S.getLink();

	}
}
