package com.daoduytinh.service;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.daoduytinh.dao.CartDAO;
import com.daoduytinh.model.Cart;

@Service
public class CartServiceImpl {
	@Autowired
	private CartDAO cartDAO;

	public void setCartDAO(CartDAO cartDAO) {
		this.cartDAO = cartDAO;
	}
	@Transactional
	public HashMap<Integer, Cart> AddCart(int id, HashMap<Integer, Cart> cart){
		return cartDAO.AddCart(id,cart);
	}
	@Transactional
	public HashMap<Integer, Cart> EditCart(int id, int quantity, HashMap<Integer, Cart> cart){
		return this.cartDAO.EditCart(id,quantity,cart);
	}
	@Transactional
	public HashMap<Integer, Cart> DeleteItemCart(int id,HashMap<Integer, Cart> cart)
	{
		return this.cartDAO.DeleteItemCart(id,cart);
	}
	@Transactional
	public int TotalQuantity(HashMap<Integer, Cart> cart)
	{
		return this.cartDAO.TotalQuantity(cart);
	};
	@Transactional
	public double TotalPrice(HashMap<Integer, Cart> cart)
	{
		return this.cartDAO.TotalPrice(cart);
	};
	@Transactional
	public HashMap<Integer, Cart> DeleteCart(HashMap<Integer, Cart> cart)
	{
		return this.cartDAO.DeleteCart(cart);
	};
	@Transactional
	public HashMap<Integer, Cart> AddCartMul(int id, HashMap<Integer, Cart> cart, int quantity)
		{
		return this.cartDAO.AddCartMul(id, cart, quantity);
		}
}
