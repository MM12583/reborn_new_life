package com.reborn.newlife;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.session.jdbc.config.annotation.web.http.EnableJdbcHttpSession;

@EnableJdbcHttpSession // 代替原始session
@SpringBootApplication 
public class RebornNewLifeApplication {
	
    public static void main(String[] args) {
        SpringApplication.run(RebornNewLifeApplication.class, args);
    }

}









