package com.reborn.newlife.base.component;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;

public class BaseNewLife implements ApplicationContextAware {
	
	protected final Logger log = LoggerFactory.getLogger(this.getClass());
	
	private static ApplicationContext context;
	
	public AppConfig getAppcationConfig() {
		return context.getBean(AppConfig.class);
	}

	@Override
	public void setApplicationContext(ApplicationContext applicationContext) 
			throws BeansException {
		context = applicationContext;
	} 
	
}
















