package com.pawan.dummy.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Service;

@Service
public class SecurityServiceImpl implements SecurityService{
	
	@Autowired
	private AuthenticationManager authenticationManager;
	
	@Autowired
	private UserDetailsService userDetailsService;

	@Override
	public void autoLogin(String userName, String password) {
		   UserDetails userDetails = userDetailsService.loadUserByUsername(userName);
		   UsernamePasswordAuthenticationToken token = new UsernamePasswordAuthenticationToken(userDetails, password, userDetails.getAuthorities());
		   authenticationManager.authenticate(token);
		   if(token.isAuthenticated()){
			   SecurityContextHolder.getContext().setAuthentication(token);
		   }
	}

	@Override
	public String findLoggedInUserName() {
		
		   Object object = SecurityContextHolder.getContext().getAuthentication().getDetails();
		   if(object instanceof UserDetails){
			   return ((UserDetails)object).getUsername();
		   }
		       return null;
	}

}
