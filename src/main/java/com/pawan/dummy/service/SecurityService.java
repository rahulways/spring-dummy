package com.pawan.dummy.service;

public interface SecurityService {
	
	public String findLoggedInUserName();
	
	public void autoLogin(String userName, String password);

}
