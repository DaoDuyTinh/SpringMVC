package com.daoduytinh.service;

import java.util.List;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.daoduytinh.dao.ProductsDAO;
import com.daoduytinh.model.Products;
import com.daoduytinh.model.Users;

@Service
public class ProductsServiceImpl implements ProductsService {
	@Autowired
	private ProductsDAO productsDAO;

	public void setProductsDAO(ProductsDAO productsDAO) {
		this.productsDAO = productsDAO;
	}

	@Transactional
	public List<Products> listProductshotdeals() {
		return this.productsDAO.listProductsdealsofweek();
	}

	@Transactional
	public List<Products> listProductsfeatureofweek() {
		return this.productsDAO.listProductsfeatureofweek();
	}

	@Transactional
	public List<Products> listProductsnewarrivals() {
		return this.productsDAO.listProductsnewarrivals();
	}

	@Transactional
	public List<Products> listProductsnewarrivalscover() {
		return this.productsDAO.listProductsnewarrivalscover();
	}

	@Transactional
	public List<Products> listProductsbestseller() {
		return this.productsDAO.listProductsbestseller();
	}
	@Transactional
	public List<Products> listProductstrend(){
		return this.productsDAO.listProductstrend();
	}
	@Transactional
	public List<Products> listProductsreview(){
		return this.productsDAO.listProductsreview();
	}
	@Transactional
	public List<Products> listProductsviewed(){
		return this.productsDAO.listProductsviewed();
		}
	@Transactional
	public Products getProductsById(int id) {
		return this.productsDAO.getProductsById(id);
	}
	@Transactional
	public List<Products> listProductsNearId(int id){
		return this.productsDAO.listProductsNearId(id);
	}
	@Transactional
	public List<Products> AllProducts(){
		return this.productsDAO.AllProducts();
	}
	@Transactional
	public void AddProduct(Products p) {
		this.productsDAO.AddProduct(p);
	}
	@Transactional
	public void UpdateProduct(Products p) {
		this.productsDAO.UpdateProduct(p);
	}
	@Transactional
	public void removePhone(int id) {
		this.productsDAO.removePhone(id);
	}
}
