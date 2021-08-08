package com.daoduytinh.service;

import java.util.List;

import com.daoduytinh.model.Products;
import com.daoduytinh.model.Relatedpro;

public interface RelatedproService {
	public List<Relatedpro> ProductRelated(int id);
}
