package com.pawan.dummy.service;

import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.pawan.dummy.model.Role;
import com.pawan.dummy.model.User;
import com.pawan.dummy.repository.RoleDao;
import com.pawan.dummy.repository.UserDao;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDao userDao;
	
	@Autowired
	private RoleDao roleDao;
	
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	@Override
	public void save(User user) {
		 
		 user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
		 Set<Role> roles = new HashSet<>((Collection<? extends Role>)roleDao.findAll());
		 user.setRoles(roles);
		 userDao.save(user);
		
	}

	@Override
	public User findByUserName(String userName) {
		return userDao.findByUserName(userName);
	}

}
