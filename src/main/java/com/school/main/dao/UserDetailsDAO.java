package com.school.main.dao;

import org.springframework.beans.factory.annotation.Autowired;

import com.school.main.vo.EmailVO;
import com.school.main.vo.LoginVO;
import com.school.main.vo.UserVO;

public class UserDetailsDAO {
	private static final String adminEmail = "admin@admin.com";

	@Autowired
	UserVO userVO;

//	@Autowired
//	LoginVO login

	public UserVO getUserDetailsByEmailId(EmailVO emailVO) {
		userVO = new UserVO();
		userVO.setEmail(emailVO.getEmail());
		// remove this
		userVO.setPassword(emailVO.getPassword());
		userVO.setUserId(111);
		userVO.setUserName("Dummy Name");
		// remove this
		if (emailVO.getEmail().equals(adminEmail)) {
			userVO.setAdminUser(true);
		} else {
			userVO.setAdminUser(false);
		}
		return userVO;
	}

	public UserVO getUserDetails(LoginVO login) {
		userVO = new UserVO();

		if (login.getEmail().equals(adminEmail)) {
			userVO.setAdminUser(true);
		} else {
			userVO.setAdminUser(false);
		}
		userVO.setEmail(login.getEmail());
		userVO.setPassword(login.getPassword());
		return userVO;
	}

}
