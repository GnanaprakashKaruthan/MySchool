package com.school.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.school.main.vo.UserVO;

@Controller
public class SpringController {

	@RequestMapping(value = "/")
	public String forwardToRegister() {
		return "index";
	}

	@RequestMapping(value = "/test")
	public String test(Model model) {
		UserVO userVO = new UserVO();
		userVO.setEmail("Email_id");
		model.addAttribute(userVO);
		return "test";
	}
	
	@RequestMapping("/about")
	public String aboutUs() {
		return "header/about";
	}
	
	@RequestMapping("/slideShow")
	public String slideShow() {
		return "header/slideShow";
	}
	
	@RequestMapping("/successStories")
	public String successStories() {
		return "helpers/successStories";
	}
	

}
