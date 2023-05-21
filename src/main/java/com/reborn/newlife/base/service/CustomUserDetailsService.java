package com.reborn.newlife.base.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.reborn.newlife.base.component.CustomUserDetails;

// 須串接 取會員之Repo
@Service
public class CustomUserDetailsService implements UserDetailsService{
	
	@Autowired
//	UserRepository userRepository;

	public CustomUserDetailsService() {
	}
	
	@Override
	public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
		
//		User user = this.userRepository.findByEmail(email);
		
//		if (user == null) {
//			throw new UsernameNotFoundException(email + "not found");
//		} else {
//			return new CustomUserDetails(user);
//		}
		
		return new CustomUserDetails();
	}

}
