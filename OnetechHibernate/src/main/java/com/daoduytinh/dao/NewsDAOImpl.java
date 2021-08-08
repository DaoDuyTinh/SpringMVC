package com.daoduytinh.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.daoduytinh.model.News;
import com.daoduytinh.model.Products;
@Repository
public class NewsDAOImpl implements NewsDAO {
	private static final org.slf4j.Logger logger = LoggerFactory.getLogger(NewsDAOImpl.class);
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}
	@SuppressWarnings("unchecked")
	public List<News> AllNews() {
		Session session = this.sessionFactory.getCurrentSession();
		List<News> allnews = session.createQuery("from News").list();
		return allnews;
	}
	@SuppressWarnings("unchecked")
	public void AddNews(News n) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(n);
		logger.info("News saved successfully, News Details=" + n);
	}
	@SuppressWarnings("unchecked")
	public void UpdateNews(News n) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(n);
		logger.info("News updated successfully, News Details=" + n);
	}
	@SuppressWarnings("unchecked")
	public News getNewsById(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		@SuppressWarnings("deprecation")
		News p = (News) session.load(News.class,new Integer(id));
		logger.info("News loaded successfully, News details=" + p);
		return p;
	}
}
