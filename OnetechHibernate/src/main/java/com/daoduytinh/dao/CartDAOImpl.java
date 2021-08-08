package com.daoduytinh.dao;

import java.util.HashMap;
import java.util.Map;


import org.hibernate.SessionFactory;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.daoduytinh.model.Cart;
import com.daoduytinh.model.Products;

@Repository
public class CartDAOImpl implements CartDAO{
	private static final org.slf4j.Logger logger = LoggerFactory.getLogger(CartDAOImpl.class);
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}
	@Autowired
	ProductsDAO productsDAO;
	public void setProductsDAO(ProductsDAO productsDAO) {
		this.productsDAO = productsDAO;
	}
	public HashMap<Integer, Cart> AddCart(int id, HashMap<Integer, Cart> cart){
		Cart item = new Cart();
		Products products = productsDAO.getProductsById(id);
		if( products != null && cart.containsKey(id)) {
			item = cart.get(id);
			item.setQuantity(item.getQuantity()+1);
			double totalPrice = products.getPrice()*item.getQuantity();
			item.setTotalPrice(totalPrice);			
		}
		else
		{
			item.setProducts(products);
			item.setQuantity(1);
			double totalPrice = products.getPrice()*item.getQuantity();
			item.setTotalPrice(totalPrice);			
		}
		cart.put(id,item);
		return cart;
	}
	
	public HashMap<Integer, Cart> EditCart(int id, int quantity, HashMap<Integer, Cart> cart){
		Cart item = new Cart();
		Products products = productsDAO.getProductsById(id);
		if(cart.containsKey(id)) {
			item = cart.get(id);
			item.setQuantity(quantity);
			item.setTotalPrice(quantity* item.getProducts().getPrice());
		}
		cart.put(id,item);
		return cart;	
	}
	
	public HashMap<Integer, Cart> DeleteItemCart(int id,HashMap<Integer, Cart> cart){
		if(cart == null)
		{
			return cart;
		}
		if(cart.containsKey(id)) {
			cart.remove(id);
		}
		return cart;	
	}

	public int TotalQuantity(HashMap<Integer, Cart> cart){
		int totalQuantity = 0;
		for(Map.Entry<Integer, Cart> item : cart.entrySet()) {
			totalQuantity += item.getValue().getQuantity();
		}
		return totalQuantity;	
	}

	public double TotalPrice(HashMap<Integer, Cart> cart){
		double totalPrice = 0;
		for(Map.Entry<Integer, Cart> item : cart.entrySet()) {
			totalPrice += item.getValue().getTotalPrice();
		}
		return totalPrice;	
	}
	public HashMap<Integer, Cart> DeleteCart(HashMap<Integer, Cart> cart){
		if(cart == null)
		{
			return cart;
		}
		else
			{
			cart.clear();
		}
		return cart;	
	}
	public HashMap<Integer, Cart> AddCartMul(int id, HashMap<Integer, Cart> cart, int quantity){
		Cart item = new Cart();
		Products products = productsDAO.getProductsById(id);
		if( products != null && cart.containsKey(id)) {
			item = cart.get(id);
			item.setQuantity(item.getQuantity()+quantity);
			double totalPrice = products.getPrice()*item.getQuantity();
			item.setTotalPrice(totalPrice);			
		}
		else
		{
			item.setProducts(products);
			item.setQuantity(quantity);
			double totalPrice = products.getPrice()*item.getQuantity();
			item.setTotalPrice(totalPrice);			
		}
		cart.put(id,item);
		return cart;
	}
}
