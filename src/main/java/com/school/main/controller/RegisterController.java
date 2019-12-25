package com.school.main.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.annotation.RequestScope;

import com.school.main.dao.UserDetailsDAO;
import com.school.main.notifications.MailToRecipents;
import com.school.main.vo.Credentials;
import com.school.main.vo.EmailVO;
import com.school.main.vo.RegisterVO;
import com.school.main.vo.UserAddressVO;
import com.school.main.vo.UserDetailsVO;
import com.school.main.vo.UserVO;

@Controller
public class RegisterController {

	@Autowired
	Credentials credentials;

	@Autowired
	RegisterVO registerVO;

	@Autowired
	UserVO userVO;

	@Autowired
	EmailVO emailVO;
	
	@Autowired
	UserDetailsVO userDetailsVO;
	
	@Autowired
	private Map<String, Object> tempMap;
	
	private boolean isAdmin;

	public boolean isAdmin() {
		return isAdmin;
	}

	public void setAdmin(boolean isAdmin) {
		this.isAdmin = isAdmin;
	}

	@Bean
	@RequestScope // or @Scope("request")
	public Map<String, Object> tempMap() {
	    return new HashMap<>();
	}
	
	@RequestMapping(value = "/register")
	public String forwardToRegister(Model model) {
		model.addAttribute("page", "registerEmail");
		if (isAdmin) {
			return "admin/adminMainPage";
		} else {
			return "register/registrationMain";
		}
	}

	@RequestMapping(value = "/registeredEmail", method = RequestMethod.POST)
	public String saveEmailDetails(EmailVO emailVO, Model model) {
		UserDetailsDAO dao = new UserDetailsDAO();
		userVO = dao.getUserDetailsByEmailId(emailVO);
		model.addAttribute("page", "registerUser");
		
		tempMap = tempMap();
		tempMap.put("emailVO", emailVO);
		if (isAdmin) {
			return "admin/adminMainPage";
		} else {
			return "register/registrationMain";
		}
	}

	@RequestMapping(value = "/registeredUser", method = RequestMethod.POST)
	public String saveUserDetails(UserDetailsVO userDetailsVO, Model model, HttpSession session, HttpServletRequest request) {
//		System.out.println("temp data "+tempMap);
//		emailVO = (EmailVO) session.getAttribute("emailVOSession");

//		if(null == emailVO) {
//			emailVO = new EmailVO();
//		} else {

//			model.addAttribute("emailVOSession", emailVO);
//		}

		UserDetailsDAO dao = new UserDetailsDAO();
//		userVO = dao.getUserDetailsByEmailId(emailVO);
//		if (null != userDetailsVO) {
//			request.getSession().setAttribute("emailVOSession", emailVO);
//
////			userVO = dao.getUserDetailsByEmailId(emailVO);
//		}

		model.addAttribute("page", "registerAddress");
//		model.addAttribute(userVO);
//		if (null != emailVO.getEmail()) {
//			try {
//				MailToRecipents.sendEmail(userVO);
//			} catch (MessagingException | IOException e) {
//				e.printStackTrace();
//			}
//		}
		tempMap.put("userDetailsVO", userDetailsVO);
		if (isAdmin) {
			return "admin/adminMainPage";
		} else {
			return "register/registrationMain";
		}
	}

	@RequestMapping(value = "/registeredAddress", method = RequestMethod.POST)
	public String saveUserAddress(UserAddressVO userAddressVO, Model model, HttpSession session, HttpServletRequest request) {

//		emailVO = (EmailVO) session.getAttribute("emailVOSession");

//		if(null == emailVO) {
//			emailVO = new EmailVO();
//		} else {

//			model.addAttribute("emailVOSession", emailVO);
//		}

		UserDetailsDAO dao = new UserDetailsDAO();

		model.addAttribute("page", "registrationSuccessfull");
		model.addAttribute("message",
				"You have successfully registered, and confirmation mail is sent to your registered email id");
		model.addAttribute(userVO);
		//add mail changes in Notification
		if (null != tempMap) {
			emailVO = (EmailVO)tempMap.get("emailVO");
			userDetailsVO = (UserDetailsVO)tempMap.get("userDetailsVO");
			try {
				MailToRecipents.sendEmail(emailVO.getEmail(), userDetailsVO.getFirstName() + userDetailsVO.getLastName());
			} catch (MessagingException | IOException e) {
				e.printStackTrace();
			}
		}
		tempMap.put("userAddressVO", userAddressVO);
		if (isAdmin) {
			return "admin/adminMainPage";
		} else {
			return "register/registrationMain";
		}
	}

}