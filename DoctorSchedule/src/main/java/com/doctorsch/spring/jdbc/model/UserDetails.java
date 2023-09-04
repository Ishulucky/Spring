package com.doctorsch.spring.jdbc.model;

public class UserDetails {
	private String username, password;

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

	@Override
	public String toString() {
		return "UserDetails [username=" + username + ", password=" + password + "]";
	}

	public UserDetails(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}

	public UserDetails() {
		super();
	}

}
