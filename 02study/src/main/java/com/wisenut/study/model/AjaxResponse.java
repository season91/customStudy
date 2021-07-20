package com.wisenut.study.model;

import lombok.Data;

@Data
public class AjaxResponse {

	boolean success;
	String errorMsg;
	String redirectUrl;
	InData indata;
	OutData outdata;
	
}
