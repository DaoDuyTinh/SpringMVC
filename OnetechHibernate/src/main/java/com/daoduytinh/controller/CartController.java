	package com.daoduytinh.controller;

	import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.beans.factory.annotation.Qualifier;
	import org.springframework.stereotype.Controller;
	import org.springframework.ui.Model;
	import org.springframework.web.bind.annotation.PathVariable;
	import org.springframework.web.bind.annotation.RequestMapping;
	import org.springframework.web.bind.annotation.RequestMethod;

import com.daoduytinh.model.Cart;
import com.daoduytinh.model.Products;
import com.daoduytinh.service.CartService;
import com.daoduytinh.service.CartServiceImpl;
import com.daoduytinh.service.ProductsService;


	@Controller
	public class CartController {
		private CartServiceImpl cartService = new CartServiceImpl() ;
		
		@Autowired(required = true)
		@Qualifier(value = "cartService")
		public void setCartServiceImpl(CartServiceImpl ca) {
			this.cartService = ca;
		}
		private ProductsService productsService;
		
		@Autowired(required = true)
		@Qualifier(value = "productsService")
		public void setProductsService(ProductsService pr) {
			this.productsService = pr;
		}
		@RequestMapping(value = "shoppingcart")
		public String ShoppingCart(Model model) {
			model.addAttribute("products", new Products());
			model.addAttribute("dealsOfWeek", this.productsService.listProductshotdeals());
			model.addAttribute("featuresOfWeek", this.productsService.listProductsfeatureofweek());
			model.addAttribute("newarrivals", this.productsService.listProductsnewarrivals());
			model.addAttribute("newarrivalscover", this.productsService.listProductsnewarrivalscover());
			model.addAttribute("bestseller", this.productsService.listProductsbestseller());
			model.addAttribute("trend", this.productsService.listProductstrend());
			model.addAttribute("review", this.productsService.listProductsreview());
			model.addAttribute("viewed", this.productsService.listProductsviewed());
			
			return "cart/cart";
		}
		@SuppressWarnings("unchecked")
		@RequestMapping(value = "addcart/{id}", method = RequestMethod.GET)
		public String addCart(HttpServletRequest request,@PathVariable int id, HttpSession session) {
			HashMap<Integer, Cart> cart = (HashMap<Integer, Cart>)session.getAttribute("Cart");
			if(cart == null) {
				cart = new HashMap<Integer, Cart>();
			}
			session.setAttribute("Cart",cartService.AddCart(id, cart));
			session.setAttribute("TotalQuantityCart",cartService.TotalQuantity(cart));
			session.setAttribute("TotalPriceCart",cartService.TotalPrice(cart));
			return "redirect:"+request.getHeader("Referer"); 
		}
		@SuppressWarnings("unchecked")
		@RequestMapping(value = "editcart/{id}/{quantity}", method = RequestMethod.GET)
		public String editCart(HttpServletRequest request,@PathVariable int id, HttpSession session,@PathVariable int quantity) {
			HashMap<Integer, Cart> cart = (HashMap<Integer, Cart>)session.getAttribute("Cart");
			if(cart == null) {
				cart = new HashMap<Integer, Cart>();
			}
			session.setAttribute("Cart",cartService.EditCart(id, quantity, cart));
			session.setAttribute("TotalQuantityCart",cartService.TotalQuantity(cart));
			session.setAttribute("TotalPriceCart",cartService.TotalPrice(cart));
			return "redirect:"+request.getHeader("Referer"); 
		}
		@SuppressWarnings("unchecked")	
		@RequestMapping(value = "deleteitemcart/{id}", method = RequestMethod.GET)
		public String deleteCart(HttpServletRequest request,@PathVariable int id, HttpSession session) {
			HashMap<Integer, Cart> cart = (HashMap<Integer, Cart>)session.getAttribute("Cart");
			if(cart == null) {
				cart = new HashMap<Integer, Cart>();
			}
			cart = cartService.DeleteItemCart(id, cart);
			session.setAttribute("TotalPriceCart",cartService.TotalPrice(cart));
			session.setAttribute("TotalQuantityCart",cartService.TotalQuantity(cart));
			return "redirect:"+request.getHeader("Referer"); 
		}
		@SuppressWarnings("unchecked")	
		@RequestMapping(value = "deletecart", method = RequestMethod.GET)
		public String deleteallCart(HttpServletRequest request,HttpSession session) {
			HashMap<Integer, Cart> cart = (HashMap<Integer, Cart>)session.getAttribute("Cart");
			if(cart == null) {
				cart = new HashMap<Integer, Cart>();
			}
			cart = cartService.DeleteCart(cart);
			session.setAttribute("TotalQuantityCart",cartService.TotalQuantity(cart));
			session.setAttribute("TotalPriceCart",cartService.TotalPrice(cart));
			return "redirect:"+request.getHeader("Referer"); 
		}
		@SuppressWarnings("unchecked")
		@RequestMapping(value = "addcartmul/{id}/{quantity}", method = RequestMethod.GET)
		public String addCartmul(HttpServletRequest request,@PathVariable int id, HttpSession session,@PathVariable int quantity) {
			HashMap<Integer, Cart> cart = (HashMap<Integer, Cart>)session.getAttribute("Cart");
			if(cart == null) {
				cart = new HashMap<Integer, Cart>();
			}
			session.setAttribute("Cart",cartService.AddCartMul(id, cart, quantity));
			session.setAttribute("TotalQuantityCart",cartService.TotalQuantity(cart));
			session.setAttribute("TotalPriceCart",cartService.TotalPrice(cart));
			return "redirect:"+request.getHeader("Referer"); 
		}
	}
