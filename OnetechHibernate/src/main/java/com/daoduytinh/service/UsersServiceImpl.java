package com.daoduytinh.service;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.daoduytinh.dao.ProductsDAO;
import com.daoduytinh.dao.UsersDAO;
import com.daoduytinh.model.Users;

@Service
public class UsersServiceImpl implements UsersService{
	@Autowired
	private UsersDAO userDAO;
	
	public void setUsersDAO(UsersDAO userDAO) {
		this.userDAO = userDAO;
	}
	@Transactional
	public void AddAccount(Users user) {
		user.setPassword(BCrypt.hashpw(user.getPassword(), BCrypt.gensalt(12)));
		userDAO.AddAccount(user);
		}
	@Transactional
	public Users getUserByUsername(String username) {
		return this.userDAO.getUserByUsername(username);
	}
	@Transactional
	public Users GetUser(Users user) {
		return this.userDAO.GetUser(user);
	}
	@Transactional
	public  Users checkCreate (Users user) {
		String username = user.getUsername();
		if(this.userDAO.getUserByUsername(username)!=null)
		{
			return user;
		}
		return null;
	}
	@Transactional
	public  Users checkAccount(Users user) {
		String pass = user.getPassword();
		user = this.userDAO.GetUser(user);
		if(user!=null)
		{
			if(BCrypt.checkpw(pass,user.getPassword())) {
				return user;
			}
			else 
			{
				return null;
			}
	
		}
		return null;
	}
	
}
