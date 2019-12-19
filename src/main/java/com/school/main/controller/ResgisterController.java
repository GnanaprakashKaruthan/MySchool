package com.school.main.controller;

import java.io.IOException;

import javax.mail.MessagingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.school.main.dao.UserDetailsDAO;
import com.school.main.notifications.MailToRecipents;
import com.school.main.vo.Credentials;
import com.school.main.vo.RegisterVO;
import com.school.main.vo.UserVO;

@Controller
public class ResgisterController {

	@Autowired
	Credentials credentials;

	@Autowired
	RegisterVO student;

	@Autowired
	UserVO userVO;

	@RequestMapping(value = "/register")
	public String forwardToRegister() {
		return "register/register";
	}

	@RequestMapping(value = "/adminRegister")
	public String adminRegister(Model model) {
		model.addAttribute("page", "adminRegister");
		return "admin/adminMainPage";
	}

	@RequestMapping(value = "/registerAction", method = RequestMethod.POST)
	public String login(RegisterVO student, Model model) {
		UserDetailsDAO dao = new UserDetailsDAO();
		userVO = dao.getUserDetailsByEmailId(student.getEmail());
		System.out.println("Username= " + student.getEmail());
		System.out.println("Password= " + student.getPassword());
		model.addAttribute("username", student.getEmail());
		model.addAttribute("password", student.getPassword());
		model.addAttribute("page", "registerationSuccessfull");
		model.addAttribute("message",
				"You have successfully registered, and confirmation mail is sent to your registered email id");
//		model.addAttribute(userVO);
		if (null != student.getEmail()) {
			try {
				MailToRecipents.sendEmail();
			} catch (MessagingException | IOException e) {
				e.printStackTrace();
			}
		}
		if (userVO.isAdminUser())
			return "admin/adminMainPage";
		else
			return "student/studentMainPage";
	}

}