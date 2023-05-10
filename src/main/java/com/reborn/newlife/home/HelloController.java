package com.reborn.newlife.home;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.reborn.newlife.basic.AppConfig;

@RestController
public class HelloController {
	
	@Autowired
	private AppConfig appConfig; 
	
	@GetMapping(path = "/")
	public String hello() {
		
		return "正在執行環境 : " + appConfig.getActiveProfile();
		
	}
}
