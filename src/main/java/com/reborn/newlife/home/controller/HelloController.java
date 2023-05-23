package com.reborn.newlife.home.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.reborn.newlife.base.component.BaseNewLife;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

@Api(tags = "Hello 首頁")
@Controller
public class HelloController extends BaseNewLife {
	
	@GetMapping(path = "/")
	public String hello() {
		log.info("歡迎來到首頁 !! ");
		return "index.html";
	}
	
	@ApiOperation(value = "執行環境", httpMethod = "GET")
	@ResponseBody
	@GetMapping(path = "/appconfig")
	public String getAppConfig() {
		log.info("取得執行環境 !! ");
		return "正在執行環境 : " + getAppcationConfig().getActiveProfile();
		
	}
}








