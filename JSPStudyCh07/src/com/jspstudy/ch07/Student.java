package com.jspstudy.ch07;

public class Student {
	
	private String name, phone, gender;
	private int age, coursesNum;
	private boolean major;
	
	public Student() { }
	
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
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public int getCoursesNum() {
		return coursesNum;
	}
	public void setCoursesNum(int coursesNum) {
		this.coursesNum = coursesNum;
	}
	public boolean isMajor() {
		return major;
	}
	public void setMajor(boolean major) {
		this.major = major;
	}	
}
