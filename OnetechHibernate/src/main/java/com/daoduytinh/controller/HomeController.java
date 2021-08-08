package com.daoduytinh.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.daoduytinh.model.Banner;
import com.daoduytinh.model.Category;
import com.daoduytinh.model.Products;
import com.daoduytinh.model.Users;
import com.daoduytinh.service.BannerService;
import com.daoduytinh.service.CategoryService;
import com.daoduytinh.service.ProductsService;
import com.daoduytinh.service.UsersService;

@Controller
public class HomeController {
		private ProductsService productsService;
		private BannerService bannerService;
		private CategoryService categoryService;

		@Autowired(required = true)
		@Qualifier(value = "productsService")
		public void setProductsService(ProductsService pr) {
			this.productsService = pr;
		}
		@Autowired
		@Qualifier(value = "bannerService")//như v nè
		public void setBannerService(BannerService ba) {
			this.bannerService = ba;
		}
		@Autowired
		@Qualifier(value = "categoryService")
		public void setCategoryService(CategoryService ca) {
			this.categoryService = ca;
		}
		
		@RequestMapping(value = "/", method = RequestMethod.GET)
		public String Productsdealsofweek(Model model) {
			model.addAttribute("products", new Products());
			model.addAttribute("dealsOfWeek", this.productsService.listProductshotdeals());
			model.addAttribute("featuresOfWeek", this.productsService.listProductsfeatureofweek());
			model.addAttribute("newarrivals", this.productsService.listProductsnewarrivals());
			model.addAttribute("newarrivalscover", this.productsService.listProductsnewarrivalscover());
			model.addAttribute("bestseller", this.productsService.listProductsbestseller());
			model.addAttribute("trend", this.productsService.listProductstrend());
			model.addAttribute("review", this.productsService.listProductsreview());
			model.addAttribute("viewed", this.productsService.listProductsviewed());
			//Banner
			model.addAttribute("banner", new Banner());
			model.addAttribute("bannertop", this.bannerService.listBannertop());
			model.addAttribute("bannerbot",this.bannerService.listBannerbottom());
			//Category
			model.addAttribute("category", new Category());
			model.addAttribute("categories", this.categoryService.AllCategory());
			return "home/home";
		}
		
	}