package com.reborn.newlife.base.config;

import org.springframework.context.annotation.Bean;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityCustomizer;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

import com.reborn.newlife.base.service.CustomUserDetailsService;

// 目前僅啟用(ALL PASS)，待後期權限制再使用
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true, securedEnabled = true, jsr250Enabled = true)
public class SecurityConfig {

	/**
	 * Method add Annotation to control prePostEnabled: @PreAuthorize,
	 * securedEnabled: @Secured, jsr250Enabled(): @RolesAllowed
	 */
	
	// user 
	@Bean
	public AuthenticationManager authManager(HttpSecurity http, 
			BCryptPasswordEncoder bCryptPasswordEncoder,
			CustomUserDetailsService userDetailService) throws Exception {
		return http
				.getSharedObject(AuthenticationManagerBuilder.class)
				.userDetailsService(userDetailService)
				.passwordEncoder(bCryptPasswordEncoder)
				.and()
				.build();
	}
	
	@Bean
	public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
		http.csrf().disable() // 未來可能實作Token
		.authorizeRequests()
		// 請求需要角色
//		.antMatchers(HttpMethod.DELETE)
//		.hasRole("ADMIN")
		// 請求須要登入
//		.antMatchers("/XXXX").authenticated() 
		.anyRequest().permitAll() // 其他不用
		.and()
		// 登入設定
//		.formLogin()
//		.usernameParameter("user PK")
//		.loginPage("/login")
		// 失敗處理 自訂Handler
//		.failureHandler(customAuthenticationFailureHandler()) 
		// 回傳有誤
//		.failureUrl("/login?error=true") 
//		.defaultSuccessUrl("/index") // 回到首頁 或 跳轉原拜訪頁
//		.permitAll()
//		.and()
//		.logout()																												
//			.logoutUrl("/logout")
//			.logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
//			.clearAuthentication(true)
//			.invalidateHttpSession(true)
//			.deleteCookies("JSESSIONID")
//			.addLogoutHandler(customLogoutHandler())
//			// 登出跳轉
//			.logoutSuccessUrl("/login") 
//			.permitAll()
		.httpBasic()
		.and()
		.sessionManagement()
		.sessionCreationPolicy(SessionCreationPolicy.STATELESS);

		return http.build();
	}
	
	// 永遠忽視以下請求
	@Bean
	public WebSecurityCustomizer webSecurityCustomizer() {
		return web -> 
				web.ignoring()
				.antMatchers("/css/**", "/js/**", "/img/**", "/lib/**",
				"/favicon.ico", "**/swagger-ui/**", "**/druid/**");
	}
	
	@Bean
    public UserDetailsService userDetailsService() {
        return new CustomUserDetailsService();
    }
	
    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }
}


















