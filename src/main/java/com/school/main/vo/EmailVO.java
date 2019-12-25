package com.school.main.vo;

import org.springframework.stereotype.Component;

@Component
public class EmailVO {
	private String email;
	private String password;
	private String repeatPassword;

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

	public String getRepeat_password() {
		return repeatPassword;
	}

	public void setRepeat_password(String repeat_password) {
		this.repeatPassword = repeat_password;
	}

}
