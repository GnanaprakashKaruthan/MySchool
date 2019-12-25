package com.school.main.vo;

import org.springframework.stereotype.Component;

@Component
public class UserVO {
	private String email;
	private int userId;
	private String userName;
	private String password;
	private boolean isAdminUser;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public boolean isAdminUser() {
		return isAdminUser;
	}

	public void setAdminUser(boolean isAdminUser) {
		this.isAdminUser = isAdminUser;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

}
