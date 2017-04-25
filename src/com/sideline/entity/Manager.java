package com.sideline.entity;

public class Manager {
	private String id;
	private String username;
	private String password;
	private String phone;
	private String name;
	
	public Manager() {
		
	}

	public Manager(String id,String username, String password, String phone, String name) {
		this.id = id;
		this.username = username;
		this.password = password;
		this.phone = phone;
		this.name = name;
	}

	public Manager(String username, String password, String phone, String name) {
		this.username = username;
		this.password = password;
		this.phone = phone;
		this.name = name;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "Manager [username=" + username + ", password=" + password + ", phone=" + phone + ", name=" + name + "]";
	}
	
}
