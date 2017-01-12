package com.healthcare.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping("/home")
public class HomeController {

	protected final Log logger = LogFactory.getLog(getClass());
	
	@RequestMapping(value = "/userindex", method = RequestMethod.GET)
	public ModelAndView userHome() {

		return new ModelAndView("/home/userindex");
	}
	
	@RequestMapping(value = "/adminindex", method = RequestMethod.GET)
	public ModelAndView adminHome() {

		return new ModelAndView("/home/adminindex");
	}
}