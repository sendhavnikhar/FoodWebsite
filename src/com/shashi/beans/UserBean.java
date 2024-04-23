package com.shashi.beans;

import java.io.Serializable;

@SuppressWarnings("serial")
public class UserBean implements Serializable {


	
	private String name;
	
	private String email;
	

	private String password;
	private String Cpassword;
	public UserBean(String name, String email, String password, String cpassword) {
		super();
		this.name = name;
		this.email = email;
		this.password = password;
		Cpassword = cpassword;
	}
	public UserBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getCpassword() {
		return Cpassword;
	}
	public void setCpassword(String cpassword) {
		Cpassword = cpassword;
	}

	
	
	
}
