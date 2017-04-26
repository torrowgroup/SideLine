package com.sideline.entity;

public class User {
	private String id;
	private String username;
	private String password;
	private String name;
	private String phone;
	private String sex;
	private String age;
	private String location;
	private String security;
	private String answer;
	

	


	public User() {
		super();
	}
	public User(String id,String username, String password, String name, String phone, String sex, String age,
			String location, String security, String answer) {
		this.id = id;
		this.username = username;
		this.password = password;
		this.name = name;
		this.phone = phone;
		this.sex = sex;
		this.age = age;
		this.location = location;
		this.security = security;
		this.answer = answer;
	}
	public User(String username, String password, String name, String phone, String sex, String age,
			String location, String security, String answer) {
		this.username = username;
		this.password = password;
		this.name = name;
		this.phone = phone;
		this.sex = sex;
		this.age = age;
		this.location = location;
		this.security = security;
		this.answer = answer;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getSecurity() {
		return security;
	}

	public void setSecurity(String security) {
		this.security = security;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password=" + password + ", name=" + name + ", phone="
				+ phone + ", sex=" + sex + ", age=" + age + ", location=" + location + ", security=" + security
				+ ", answer=" + answer + "]";
	}
	
}
