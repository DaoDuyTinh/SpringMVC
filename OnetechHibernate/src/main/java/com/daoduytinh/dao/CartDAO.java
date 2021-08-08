package com.daoduytinh.dao;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import com.daoduytinh.model.Cart;

public interface CartDAO {
	public HashMap<Integer, Cart> AddCart(int id, HashMap<Integer, Cart> cart);
	public HashMap<Integer, Cart> EditCart(int id, int quantity, HashMap<Integer, Cart> cart);
	public HashMap<Integer, Cart> DeleteItemCart(int id,HashMap<Integer, Cart> cart);
	public int TotalQuantity(HashMap<Integer, Cart> cart);
	public double TotalPrice(HashMap<Integer, Cart> cart);
	public HashMap<Integer, Cart> DeleteCart(HashMap<Integer, Cart> cart);
	public HashMap<Integer, Cart> AddCartMul(int id, HashMap<Integer, Cart> cart, int quantity);
}
