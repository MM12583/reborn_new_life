package com.reborn.newlife.basic;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component
public class AppConfig {
	
	public enum ACTIVE_PROFILE{
		PROD, DEV, NON
	}
	
	@Value("${profileName}")
	private String activeProfile;
	
	public ACTIVE_PROFILE getActiveProfile() {
		return switch(activeProfile) {
			case "dev" -> ACTIVE_PROFILE.DEV;
			case "prod" -> ACTIVE_PROFILE.PROD;
			default -> ACTIVE_PROFILE.NON;
		};
	}
}







