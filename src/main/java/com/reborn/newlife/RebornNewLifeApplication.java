package com.reborn.newlife;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration;

@SpringBootApplication(exclude = {SecurityAutoConfiguration.class}) // 先排除security
public class RebornNewLifeApplication {
	
	
    public static void main(String[] args) {
        SpringApplication.run(RebornNewLifeApplication.class, args);
    }

}









