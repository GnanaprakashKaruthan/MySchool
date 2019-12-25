package com.school.main.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.school.main.dao.UserDetailsDAO;
import com.school.main.service.UserService;
import com.school.main.vo.LoginVO;
import com.school.main.vo.UserVO;

@Controller
public class LoginController {

	@Autowired
	LoginVO loginVO;

	@Autowired
	UserVO userVO;

	@Autowired
	UserService userService;

	private boolean isAdminUser = false;

	public boolean isAdminUser() {
		return isAdminUser;
	}

	public void setAdminUser(boolean isAdminUser) {
		this.isAdminUser = isAdminUser;
	}

	@RequestMapping(value = "/loginAction", method = RequestMethod.POST)
	public String adminLogin(LoginVO loginVO, Model model, HttpServletRequest request) {
		if (null != loginVO) {
			System.out.println("Username= " + loginVO.getEmail());
			System.out.println("Password= " + loginVO.getPassword());

			UserDetailsDAO userDetails = new UserDetailsDAO();
			userVO = new UserVO();
			userVO = userDetails.getUserDetails(loginVO);
			isAdminUser = userVO.isAdminUser();
			request.getSession().setAttribute("loginVOSession", loginVO);
			model.addAttribute("page", "myAccountPage");
			if (isAdminUser) { // response mocked
				model.addAttribute(userVO);
			} else {
				userVO = userService.getUserDetails(loginVO.getEmail());
				model.addAttribute(userVO);
			}
		}
		if (isAdminUser) {
			return "admin/adminMainPage";
		} else {
			return "student/studentMainPage";
		}
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