package com.daoduytinh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.daoduytinh.dao.RelatedproDAO;
import com.daoduytinh.model.Products;
import com.daoduytinh.model.Relatedpro;

@Service
public class RelatedproServiceImpl implements RelatedproService{
	@Autowired
	private RelatedproDAO relatedproDAO;
	
	public void setRelatedproDAO(RelatedproDAO relatedproDAO) {
		this.relatedproDAO = relatedproDAO;
	}
	@Transactional
	public List<Relatedpro> ProductRelated(int id){
		return this.relatedproDAO.ProductRelated(id);
	}
}
