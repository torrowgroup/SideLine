package com.sideline.entity;

public class Reaume {
	private String id;
	private String username;
	private String name;
	private String age;
	private String sex;
	private String location;
	private String education;
	private String experience;
	private String phone;
	private String skill;
	private String introduce;
	public Reaume() {
	}



	public Reaume(String username, String name, String age, String sex, String location, String education,
			String experience, String phone, String skill, String introduce) {
		this.username = username;
		this.name = name;
		this.age = age;
		this.sex = sex;
		this.location = location;
		this.education = education;
		this.experience = experience;
		this.phone = phone;
		this.skill = skill;
		this.introduce = introduce;
	}

	public Reaume(String id, String username, String name, String age, String sex, String location, String education,
			String experience, String phone, String skill, String introduce) {
		super();
		this.id = id;
		this.username = username;
		this.name = name;
		this.age = age;
		this.sex = sex;
		this.location = location;
		this.education = education;
		this.experience = experience;
		this.phone = phone;
		this.skill = skill;
		this.introduce = introduce;
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getEducation() {
		return education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	public String getExperience() {
		return experience;
	}

	public void setExperience(String experience) {
		this.experience = experience;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getSkill() {
		return skill;
	}

	public void setSkill(String skill) {
		this.skill = skill;
	}

	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	@Override
	public String toString() {
		return "Reaume [id=" + id + ", username=" + username + ", name=" + name + ", age=" + age + ", sex=" + sex
				+ ", location=" + location + ", education=" + education + ", experience=" + experience + ", phone="
				+ phone + ", skill=" + skill + ", introduce=" + introduce + "]";
	}

	
	
}
