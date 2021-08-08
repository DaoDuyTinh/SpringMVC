package com.daoduytinh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.daoduytinh.dao.CategoryDAO;
import com.daoduytinh.model.Category;

@Service
public class CategoryServiceImpl implements CategoryService{
	@Autowired
	private CategoryDAO categoryDAO;

	public void setCategoryDAO(CategoryDAO categoryDAO) {
		this.categoryDAO = categoryDAO;
	}
	@Transactional
	public List<Category> AllCategory() {
		return this.categoryDAO.AllCategory();
	}
}
