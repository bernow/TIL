package com.spring.project;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MypageController {

	@RequestMapping(value = "/parking/mypage", method = RequestMethod.GET)
	public ModelAndView get() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("mypage");
		return mav;
	}

	@RequestMapping(value = "/parking/mypage_confirm", method = RequestMethod.GET)
	public ModelAndView getPassword() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("mypage_confirm");
		return mav;
	}
}
