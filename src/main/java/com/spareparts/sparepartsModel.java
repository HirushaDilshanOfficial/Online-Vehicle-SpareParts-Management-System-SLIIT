package com.spareparts;

public class sparepartsModel {

	private int id;
	private String name;
	private String email ;
	private String phonenumber;
	private String password;
	
	public sparepartsModel(int id, String name, String email, String phonenumber, String password) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.phonenumber = phonenumber;
		this.password = password;
	}

	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getEmail() {
		return email;
	}

	public String getPhonenumber() {
		return phonenumber;
	}

	public String getPassword() {
		return password;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
