package com.daoduytinh.service;

import com.daoduytinh.model.Users;

public interface UsersService {
	public void AddAccount(Users user);
	public Users getUserByUsername(String username);
	public  Users checkCreate (Users user);
	public  Users checkAccount (Users user);
	public Users GetUser(Users user) ;
}
