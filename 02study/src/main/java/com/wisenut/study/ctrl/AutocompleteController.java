package com.wisenut.study.ctrl;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AutocompleteController {
	
	@RequestMapping(value = "/auto", method = RequestMethod.GET)
	public String autocomplete() {
		
		return "autocomplete";
	}

}
