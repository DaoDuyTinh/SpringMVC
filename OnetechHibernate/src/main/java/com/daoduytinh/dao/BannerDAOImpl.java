package com.daoduytinh.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.daoduytinh.model.Banner;
@Repository
public class BannerDAOImpl implements BannerDAO{
	private static final org.slf4j.Logger logger = LoggerFactory.getLogger(BannerDAOImpl.class);
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	@SuppressWarnings("unchecked")
	public List<Banner> listBannertop() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Banner> bannertop = session.createQuery("from Banner B where B.type = 1").list();
		for (Banner b : bannertop) {
			logger.info("Banner List::" + b);
		}
		return bannertop;
	}
	@SuppressWarnings("unchecked")
	public List<Banner> listBannerbottom() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Banner> bannerbottom = session.createQuery("from Banner B where B.type = 2").list();
		for (Banner b : bannerbottom) {
			logger.info("Banner List::" + b);
		}
		return bannerbottom;
	}
}
