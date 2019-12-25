package com.school.main.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.school.main.vo.EmailVO;
import com.school.main.vo.LoginVO;
import com.school.main.vo.UserVO;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	EmailVO emailVO;

	@Autowired
	LoginVO loginVO;

	@Autowired
	UserVO userVO;

	@Override
	public EmailVO getEmailDetails(String email) {
		emailVO = new EmailVO();
		emailVO.setEmail(email);
		emailVO.setPassword("12345678");
		return emailVO;
	}

	@Override
	public LoginVO getLoginDetails(String email) {
		loginVO = new LoginVO();
		loginVO.setEmail(email);
		loginVO.setPassword("111111");
		return loginVO;
	}

	@Override
	public UserVO getUserDetails(String email) {
		userVO = new UserVO();
		userVO.setAdminUser(false);
		userVO.setEmail(email);
		userVO.setUserId(0001);
		userVO.setUserName("01BMS001");
		userVO.setPassword("mypassword");
		return userVO;
	}

}
