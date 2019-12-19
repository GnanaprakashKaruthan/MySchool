package com.school.main.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.school.main.dao.UserDetailsDAO;
import com.school.main.vo.LoginVO;
import com.school.main.vo.UserVO;

@Controller
public class LoginController {

	@Autowired
	LoginVO loginVO;

	@Autowired
	UserVO userVO;

	@RequestMapping(value = "/loginAction", method = RequestMethod.POST)
	public String adminLogin(LoginVO login, Model model) {
		System.out.println("Username= " + login.getEmail());
		System.out.println("Password= " + login.getPassword());

		UserDetailsDAO userDetails = new UserDetailsDAO();
		userVO = new UserVO();
		userVO = userDetails.getUserDetails(login);
		model.addAttribute("username", login.getEmail());
		model.addAttribute("password", login.getPassword());
		model.addAttribute("isAdminUser", userVO.isAdminUser());
		model.addAttribute("page", "myAccountPage");
		return "login/userDashboard";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(Model model) {
		return "login/login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String studentLogin(Model model) {
		return "login/login";
	}

}