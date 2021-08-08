package com.daoduytinh.dao;

import java.util.List;

import com.daoduytinh.model.Products;
import com.daoduytinh.model.Relatedpro;

public interface RelatedproDAO {
	public List<Relatedpro> ProductRelated(int id);
}
