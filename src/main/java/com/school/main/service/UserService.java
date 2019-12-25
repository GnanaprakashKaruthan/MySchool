package com.school.main.service;

import com.school.main.vo.EmailVO;
import com.school.main.vo.LoginVO;
import com.school.main.vo.UserVO;

public interface UserService {

	public EmailVO getEmailDetails(String email);

	public LoginVO getLoginDetails(String email);

	public UserVO getUserDetails(String email);

}
