package com.daoduytinh.dao;

import com.daoduytinh.model.Users;

public interface UsersDAO {
	public void AddAccount(Users user);
	public Users getUserByUsername(String username);
	public Users GetUser(Users user) ;
}
