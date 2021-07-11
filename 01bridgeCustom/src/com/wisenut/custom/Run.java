package com.wisenut.custom;

import java.util.regex.Pattern;

public class Run {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		String col = "AB-12.조아영";
		String col2 = "1212";
		//  Matcher와 pattern을 이용해 구현.
		
		Pattern pattern = Pattern.compile("[a-zA-Z]");
		System.out.println(pattern);
		
		System.out.println("##matcher find " + pattern.matcher(col2).find());
		
		// 구현한 로직을 jar로 다시 말아서 서버에 배포한다.

	}

}
