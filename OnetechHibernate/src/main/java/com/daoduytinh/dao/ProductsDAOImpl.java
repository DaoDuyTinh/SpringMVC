package com.daoduytinh.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.daoduytinh.model.Products;
import com.daoduytinh.dao.ProductsDAO;

@Repository
public class ProductsDAOImpl implements ProductsDAO {
	private static final org.slf4j.Logger logger = LoggerFactory.getLogger(ProductsDAOImpl.class);
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}
	
	@SuppressWarnings("unchecked")
	public List<Products> AllProducts() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Products> all = session.createQuery("from Products").list();
		for (Products p : all) {
			logger.info("Products List::" + p);
		}
		return all;
	}
	

	@SuppressWarnings("unchecked")
	public List<Products> listProductsdealsofweek() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Products> producthotdeals = session.createQuery("from Products P where P.hot_deal = true").list();
		for (Products p : producthotdeals) {
			logger.info("Products List::" + p);
		}
		return producthotdeals;
	}
	
	@SuppressWarnings("unchecked")
	public List<Products> listProductsfeatureofweek() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Products> productfeatureofweek = session.createQuery("from Products P where P.hot_new = true").list();
		for (Products p : productfeatureofweek) {
			logger.info("Products List::" + p);
		}
		return productfeatureofweek;
	}
	@SuppressWarnings("unchecked")
	public List<Products> listProductsnewarrivals() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Products> productsnewarrivals = session.createQuery("from Products P where P.hot_new = true and P.hot_deal = false").list();
		for (Products p : productsnewarrivals) {
			logger.info("Products List::" + p);
		}
		return productsnewarrivals;
	}
	@SuppressWarnings("unchecked")
	public List<Products> listProductsnewarrivalscover() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Products> productsnewarrivalscover = session.createQuery("from Products P where P.hot_new = true and P.hot_deal = true and P.cover = true").list();
		for (Products p : productsnewarrivalscover) {
			logger.info("Products List::" + p);
		}
		return productsnewarrivalscover;
	}
	@SuppressWarnings("unchecked")
	public List<Products> listProductsbestseller() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Products> productsbestseller = session.createQuery("from Products P where P.hot_best = true").list();
		for (Products p : productsbestseller) {
			logger.info("Products List::" + p);
		}
		return productsbestseller;
	}
	@SuppressWarnings("unchecked")
	public List<Products> listProductstrend() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Products> productstrend = session.createQuery("from Products P where P.trend = true").list();
		for (Products p : productstrend) {
			logger.info("Products List::" + p);
		}
		return productstrend;
	}
		@SuppressWarnings("unchecked")
		public List<Products> listProductsreview() {
			Session session = this.sessionFactory.getCurrentSession();
			List<Products> productsreview = session.createQuery("from Products P where P.latest_review = true").list();
			for (Products p : productsreview) {
				logger.info("Products List::" + p);
			}
			return productsreview;
			
	}
		@SuppressWarnings("unchecked")
		public List<Products> listProductsviewed() {
			Session session = this.sessionFactory.getCurrentSession();
			List<Products> productsviewed = session.createQuery("from Products P where P.latest_review = false and P.trend = true").list();
			for (Products p : productsviewed) {
				logger.info("Products List::" + p);
			}
			return productsviewed;			
		}	
		@SuppressWarnings("unchecked")
		public Products getProductsById(int id) {
			Session session = this.sessionFactory.getCurrentSession();
			@SuppressWarnings("deprecation")
			Products p = (Products) session.load(Products.class,new Integer(id));
			logger.info("Product loaded successfully, Products details=" + p);
			return p;
		}
		@SuppressWarnings("unchecked")
		public List<Products> listProductsNearId(int id) {
			Session session = this.sessionFactory.getCurrentSession();
			Products b = (Products) session.load(Products.class,new Integer(id));
			List<Products> productsviewed = session.createQuery("from Products P where P.id != '"+b.getId()+"' and "+"P.id_category ='"+ b.getId_category()+"'").list();
			for (Products p : productsviewed) {
				logger.info("Products List::" + p);
			}
			return productsviewed;			
		}	
		@SuppressWarnings("unchecked")
		public void AddProduct(Products p) {
			Session session = this.sessionFactory.getCurrentSession();
			session.persist(p);
			logger.info("Products saved successfully, Products Details=" + p);
		}
		@SuppressWarnings("unchecked")
		public void UpdateProduct(Products p) {
			Session session = this.sessionFactory.getCurrentSession();
			session.update(p);
			logger.info("Products updated successfully, Products Details=" + p);
		}
		public void removePhone(int id) {
			Session session = this.sessionFactory.getCurrentSession();
			Products p = (Products) session.load(Products.class, new Integer(id));
			if (null != p) {
				session.delete(p);
			}
			logger.info("Products deleted successfully, Products details=" + p);
		}
		
}