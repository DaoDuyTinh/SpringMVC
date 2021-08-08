package com.daoduytinh.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.daoduytinh.model.Cart;
import com.daoduytinh.model.Products;
import com.daoduytinh.model.Users;

@Repository
public class UsersDAOImpl implements UsersDAO{
	private static final org.slf4j.Logger logger = LoggerFactory.getLogger(UsersDAOImpl.class);
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}
	public void AddAccount(Users user){
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(user);
		logger.info("User saved successfully, Phone Details=" + user);
	}
	public Users getUserByUsername(String username) {
		Session session = null;

        try {
            session = sessionFactory.openSession();
            List<Users> users = new ArrayList<Users>();
            users = session.createQuery("from Users where username=?")
                    .setParameter(0, username).list();
            if (users.size() > 0) {
                return users.get(0);
            }
        } catch (HibernateException e) {
            e.printStackTrace();
        }
        return null;
	}
	public Users GetUser(Users user) {
		 Session session = null;

	        try {
	            session = sessionFactory.openSession();
	            List<Users> users = new ArrayList<Users>();
	            users = session.createQuery("from Users where username=?")
	                    .setParameter(0, user.getUsername()).list();
	            if (users.size() > 0) {
	                return users.get(0);
	            }
	        } catch (HibernateException e) {
	            e.printStackTrace();
	        }
	        return null;
	    }

}
