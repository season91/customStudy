package com.wisenut.study.ctrl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wisenut.study.model.AjaxResponse;
import com.wisenut.study.service.WordCloudService;

@Controller
public class AjaxWordCloudController {
	
	@Autowired
	WordCloudService wordCloudService;
	
	
	@RequestMapping("/ajax/getWordCloudList")
	@ResponseBody
	public AjaxResponse makeResponse() {
		AjaxResponse response = new AjaxResponse();
		
		// 서비스에서  wordcloud 에 들어갈 값 담기.
		
		return response;
	}

}
