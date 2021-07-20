package com.wisenut.study.ctrl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wisenut.study.service.WordCloudService;

@Controller
@RequestMapping("/wordcloud")
public class WordCloudController {

	
	@Autowired
	private WordCloudService wordCloudService;
	
	@RequestMapping("/list")
	public String getWords() {
		return "/wc/list";
	}
}
