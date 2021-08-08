package com.daoduytinh.service;

import java.util.List;

import com.daoduytinh.model.Products;

public interface ProductsService {
	public List<Products> listProductshotdeals();
	public List<Products> listProductsfeatureofweek();
	public List<Products> listProductsnewarrivals();
	public List<Products> listProductsnewarrivalscover();
	public List<Products> listProductsbestseller();
	public List<Products> listProductstrend();
	public List<Products> listProductsreview();
	public List<Products> listProductsviewed();
	public Products getProductsById(int id);
	public List<Products> listProductsNearId(int id);
	public List<Products> AllProducts();
	public void AddProduct(Products p);
	public void UpdateProduct(Products p);
	public void removePhone(int id);
}
