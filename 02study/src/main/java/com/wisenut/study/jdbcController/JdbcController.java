package com.wisenut.study.jdbcController;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class JdbcController {
	
	private static final Logger logger = LoggerFactory.getLogger(JdbcController.class);
	
	@RequestMapping(value = "/cont", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("jdbc controller :", locale);
		
		System.out.println("### 시작  ");
		
		return "home";
	}

}
