package com.sideline.listener;

import java.sql.SQLException;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import com.sideline.util.MysqlLink;

public class MySqlListener implements ServletContextListener{
	 // 应用监听器的销毁方法   
    public void contextDestroyed(ServletContextEvent event) {   
          
        // 在整个web应用销毁之前调用，将所有应用空间所设置的内容清空   
        try {
			MysqlLink.conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        System.out.println("销毁工作完成...");   
    }   
   
    // 应用监听器的初始化方法   
    public void contextInitialized(ServletContextEvent event) {       				
    	new MysqlLink().getLink();
    	String path = event.getServletContext().getContextPath();
    	event.getServletContext().setAttribute("path", path);
    }
}
