package com.reborn.newlife.base.component;

import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

// 儲存 會員(user)資訊
@SuppressWarnings("serial")
public class CustomUserDetails implements UserDetails {

	
//	  private User user;
    
//    public CustomUserDetails(User user) {
//        this.user = user;
//    }
    
    
    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
    	
//    	String roles = user.getRole();
    	String roles = null;
	    if (roles == null) {
	    	roles = "ROLE_XXX";
	    }
    	
        return (List<? extends GrantedAuthority>) Arrays.stream(roles.split(","))
            	.map(SimpleGrantedAuthority::new)
            	.collect(Collectors.toList());
    }


    @Override
    public String getPassword() { // 用密碼
//        return user.getPassword();
        return "XXX";
        
    }
    
    @Override
    public String getUsername() { // 用戶全名
//        return user.getFullName();
        return "XXX";
    }
    
    @Override
    public boolean isAccountNonExpired() { // 帳號是否未過期
        return true;
    }
    
    @Override
    public boolean isAccountNonLocked() { // 用戶是否未被鎖
        return true;
    }
    
    @Override
    public boolean isCredentialsNonExpired() { // 憑證是否未過期
        return true;
    }
    
    @Override
    public boolean isEnabled() { // 用戶是否啟用
    	
    	// 自訂規則
//		if (user.getCertificationStatus() == 0) {
//			return false ;
//		}
    	
        return true;
    }
//
//	public User getUser() {
//		return user;
//	}
//
//	public void setUser(User user) {
//		this.user = user;
//	}
    
}




