package com.pawan.dummy.repository;

import org.springframework.data.repository.CrudRepository;
import com.pawan.dummy.model.User;

public interface UserDao extends CrudRepository<User, Long>{
	
	public User findByUserName(String userName);

}
