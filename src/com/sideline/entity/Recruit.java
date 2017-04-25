package com.sideline.entity;

public class Recruit {
	private String id;
	private String username;
	private String unit;
	private String name;
	private String work;
	private String requirement;
	private String phone;
	private String time;
	private String location;
	private String salary;
	private String allow;
	public Recruit() {
		
	}
	public Recruit( String username, String unit, String name, String work, String requirement, String phone,
			String time, String location, String salary, String allow) {
		this.username = username;
		this.unit = unit;
		this.name = name;
		this.work = work;
		this.requirement = requirement;
		this.phone = phone;
		this.time = time;
		this.location = location;
		this.salary = salary;
		this.allow = allow;
	}

	public Recruit(String id, String username, String unit, String name, String work, String requirement, String phone,
			String time, String location, String salary, String allow) {
		this.id = id;
		this.username = username;
		this.unit = unit;
		this.name = name;
		this.work = work;
		this.requirement = requirement;
		this.phone = phone;
		this.time = time;
		this.location = location;
		this.salary = salary;
		this.allow = allow;
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

	public String getUnit() {
		return unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getWork() {
		return work;
	}

	public void setWork(String work) {
		this.work = work;
	}

	public String getRequirement() {
		return requirement;
	}

	public void setRequirement(String requirement) {
		this.requirement = requirement;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getSalary() {
		return salary;
	}

	public void setSalary(String salary) {
		this.salary = salary;
	}

	public String getAllow() {
		return allow;
	}

	public void setAllow(String allow) {
		this.allow = allow;
	}

	@Override
	public String toString() {
		return "Recruit [id=" + id + ", username=" + username + ", unit=" + unit + ", name=" + name + ", work=" + work
				+ ", requirement=" + requirement + ", phone=" + phone + ", time=" + time + ", location=" + location
				+ ", salary=" + salary + ", allow=" + allow + "]";
	}	
}
