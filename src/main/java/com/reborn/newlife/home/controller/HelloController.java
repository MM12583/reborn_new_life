package com.reborn.newlife.home.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.reborn.newlife.base.basecomponent.AppConfig;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

@Api(tags = "Hello 首頁")
@Controller
public class HelloController {
	
	@Autowired
	private AppConfig appConfig; 
	
	@GetMapping(path = "/")
	public String hello() {
		
		return "index.html";
	}
	
	@ApiOperation("執行環境")
	@ResponseBody
	@GetMapping(path = "/appconfig")
	public String getAppConfig() {
		
		return "正在執行環境 : " + appConfig.getActiveProfile();
		
	}
}








