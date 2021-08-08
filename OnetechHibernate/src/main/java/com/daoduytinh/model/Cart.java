package com.daoduytinh.model;

public class Cart {
	private Products products; 
	private int quantity;
	private double totalPrice;
	
	
	public Cart() {
	}
	public Cart(Products products, int quantity, double totalPrice) {
		this.products = products;
		this.quantity = quantity;
		this.totalPrice = totalPrice;
	}
	public Products getProducts() {
		return products;
	}
	public void setProducts(Products products) {
		this.products = products;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}

}
