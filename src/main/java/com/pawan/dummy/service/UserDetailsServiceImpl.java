package com.pawan.dummy.service;

import java.util.HashSet;
import java.util.Set;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.transaction.annotation.Transactional;
import com.pawan.dummy.model.Role;
import com.pawan.dummy.model.User;
import com.pawan.dummy.repository.UserDao;

public class UserDetailsServiceImpl implements UserDetailsService{
	
	@Autowired
	private UserDao userDao;

	@Override
	@Transactional(readOnly = true)
	public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
		   User user = userDao.findByUserName(userName);
		   Set<GrantedAuthority> authorities = new HashSet<>();
		   for(Role role: user.getRoles()){
			   authorities.add(new SimpleGrantedAuthority(role.getName()));
		   }
		   return new org.springframework.security.core.userdetails.User(user.getUserName(), user.getPassword(), authorities);
	}


}
