package com.daoduytinh.dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.daoduytinh.model.Products;
import com.daoduytinh.model.Relatedpro;

@Repository
public class RelatedproDAOImpl implements RelatedproDAO{
	private static final org.slf4j.Logger logger = LoggerFactory.getLogger(RelatedproDAOImpl.class);
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}
	
	@SuppressWarnings("unchecked")
	public List<Relatedpro> ProductRelated(int id) {
			Session session = this.sessionFactory.getCurrentSession();
			Products pr = (Products) session.createSQLQuery("select * from Product where id in(select id_product_re from Relatedpro where id_product = "+id+")");
			List<Relatedpro> list2 = pr.getRelatedpro();
			for(Relatedpro p : list2) {
				logger.info("Relatedpro list:" + p);
			}
			return list2;
			
		}
	
}

