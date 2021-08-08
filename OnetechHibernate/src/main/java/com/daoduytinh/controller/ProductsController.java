package com.daoduytinh.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.daoduytinh.model.Category;
import com.daoduytinh.model.News;
import com.daoduytinh.model.Products;
import com.daoduytinh.service.CategoryService;
import com.daoduytinh.service.NewsService;
import com.daoduytinh.service.ProductsService;
import com.daoduytinh.service.RelatedproService;
@Controller
public class ProductsController {
			
			private ProductsService productsService;
			private RelatedproService relatedproService;
			private NewsService newsService;
			private CategoryService categoryService;
			
			@Autowired(required = true)
			@Qualifier(value = "productsService")
			public void setProductsService(ProductsService pr) {
				this.productsService = pr;
			}
			@Autowired
			@Qualifier(value = "relatedproService")
			public void setRelatedproService(RelatedproService re) {
				this.relatedproService = re;
			}
			@Autowired(required = true)
			@Qualifier(value = "newsService")
			public void setNewsService(NewsService ne) {
				this.newsService = ne;
			}
			@Autowired
			@Qualifier(value = "categoryService")
			public void setCategoryService(CategoryService ca) {
				this.categoryService = ca;
			}
			@RequestMapping(value = "product/{id}", method = RequestMethod.GET)
			public String ProductsDetail(@PathVariable("id") int id, Model model) {
				model.addAttribute("products", new Products());
				model.addAttribute("product", this.productsService.getProductsById(id));
				model.addAttribute("dealsOfWeek", this.productsService.listProductshotdeals());
				model.addAttribute("featuresOfWeek", this.productsService.listProductsfeatureofweek());
				model.addAttribute("newarrivals", this.productsService.listProductsnewarrivals());
				model.addAttribute("newarrivalscover", this.productsService.listProductsnewarrivalscover());
				model.addAttribute("bestseller", this.productsService.listProductsbestseller());
				model.addAttribute("trend", this.productsService.listProductstrend());
				model.addAttribute("review", this.productsService.listProductsreview());
				model.addAttribute("viewed", this.productsService.listProductsviewed());
				model.addAttribute("near", this.productsService.AllProducts());
				model.addAttribute("nearnear", this.relatedproService.ProductRelated(id));
				model.addAttribute("category", new Category());
				model.addAttribute("categories", this.categoryService.AllCategory());
				
				return "product/product";
			}
			@RequestMapping(value = "news")
			public String AllNews(Model model) {
				model.addAttribute("tintuc", new News());
				model.addAttribute("allnew",this.newsService.AllNews());
				model.addAttribute("category", new Category());
				model.addAttribute("categories", this.categoryService.AllCategory());
				return "news/home";
			}
			@RequestMapping(value = "news/{id}", method = RequestMethod.GET)
			public String NewsDetail(@PathVariable("id") int id, Model model) {
				model.addAttribute("tintuc", new News());
				model.addAttribute("newsde", this.newsService.getNewsById(id));
				return "news/news_detail";
			}
			
	}
