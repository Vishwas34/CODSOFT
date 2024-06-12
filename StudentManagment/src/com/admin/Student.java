package com.admin;

public class Student {
	private int id;
	private String name;
	private String dob;
	private String address;
	private String qualifiaction;
	private String email;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getQualifiaction() {
		return qualifiaction;
	}
	public void setQualifiaction(String qualifiaction) {
		this.qualifiaction = qualifiaction;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Student( String name, String dob, String address, String qualifiaction, String email) {
		super();
		
		this.name = name;
		this.dob = dob;
		this.address = address;
		this.qualifiaction = qualifiaction;
		this.email = email;
	}
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
	

}
