package com.pawan.dummy.service;

import com.pawan.dummy.model.User;

public interface UserService {
	
	public void save(User user);
	
	public User findByUserName(String userName);

}
