package com.daoduytinh.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.daoduytinh.model.Category;
import com.daoduytinh.model.News;
import com.daoduytinh.model.Products;
import com.daoduytinh.model.Users;
import com.daoduytinh.service.CategoryService;
import com.daoduytinh.service.NewsService;
import com.daoduytinh.service.ProductsService;
import com.daoduytinh.service.RelatedproService;

@Controller
public class AdminController {
	private CategoryService categoryService;
	private ProductsService productsService;
	private NewsService newsService;
	
	@Autowired(required = true)
	@Qualifier(value = "productsService")
	public void setProductsService(ProductsService pr) {
		this.productsService = pr;
	}
	@Autowired(required = true)
	@Qualifier(value = "categoryService")
	public void setCategoryService(CategoryService ca) {
		this.categoryService = ca;
	}
	@Autowired(required = true)
	@Qualifier(value = "newsService")
	public void setNewsService(NewsService ne) {
		this.newsService = ne;
	}
	@RequestMapping(value = "quan-ly")
	public String Admin() {
		return "admin/home/home";
	}
	@RequestMapping(value = "quan-ly/product")
	public String AdminProducts(Model model) {
			model.addAttribute("products", new Products());
			model.addAttribute("category", new Category());
			model.addAttribute("allproduct", this.productsService.AllProducts());
			model.addAttribute("allcate", this.categoryService.AllCategory());
		return "admin/products/products";
	}
	@RequestMapping(value = "quan-ly/category")
	public String AdminCategory(Model model) {
			model.addAttribute("category", new Category());
			model.addAttribute("allcate", this.categoryService.AllCategory());
		return "admin/category/category";
	}
	@RequestMapping(value = "quan-ly/new")
	public String AdminNews(Model model) {
			model.addAttribute("tintuc", new News());
			model.addAttribute("allnew", this.newsService.AllNews());
		return "admin/news/news";
	}
	@RequestMapping(value = "quan-ly/product/add", method = RequestMethod.GET)
	public String CreatePro(Model model) {
		model.addAttribute("product", new Products());
		return "admin/products/addproduct";
	}
	@RequestMapping(value = "quan-ly/product/add", method = RequestMethod.POST, produces = "application/x-www-form-urlencoded;charset=UTF-8")
	public String CreateProduct(Model model,@ModelAttribute("product") Products product) {		
		this.productsService.AddProduct(product);
		model.addAttribute("allproduct", this.productsService.AllProducts());
		model.addAttribute("allcate", this.categoryService.AllCategory());
		return "admin/products/products";
	}
	@RequestMapping(value = "quan-ly/product/edit/{id}", method = RequestMethod.GET)
	public String EditPro(Model model,@PathVariable("id") int id) {
		model.addAttribute("product", this.productsService.getProductsById(id));
		return "admin/products/editproduct";
	}
	@RequestMapping(value = "quan-ly/product/edit", method = RequestMethod.POST, produces = "application/x-www-form-urlencoded;charset=UTF-8")
	public ModelAndView EditProduct(@ModelAttribute("product") Products product) {
		ModelAndView mv = new ModelAndView("admin/products/products");
		this.productsService.UpdateProduct(product);
		mv.addObject("allproduct", this.productsService.AllProducts());
		mv.addObject("allcate", this.categoryService.AllCategory());		
		return mv;
	}
	@RequestMapping(value = "quan-ly/product/delete/{id}", method = RequestMethod.GET)
	public ModelAndView DeleteProduct(@PathVariable("id") int id) {
		ModelAndView mv = new ModelAndView("admin/products/products");	
		this.productsService.removePhone(id);
		mv.addObject("allproduct", this.productsService.AllProducts());
		mv.addObject("allcate", this.categoryService.AllCategory());
		
		return mv;
	}
	//tin tuc
	@RequestMapping(value = "quan-ly/news/add", method = RequestMethod.GET)
	public String CreateNew(Model model) {
		model.addAttribute("news", new News());
		return "admin/news/addnews";
	}
	@RequestMapping(value = "quan-ly/news/add", method = RequestMethod.POST, produces = "application/x-www-form-urlencoded;charset=UTF-8")
	public String CreateNews(Model model,@ModelAttribute("news") News news) {		
		this.newsService.AddNews(news);
		model.addAttribute("allnew", this.newsService.AllNews());;
		return "admin/news/news";
	}
	@RequestMapping(value = "quan-ly/news/edit/{id}", method = RequestMethod.GET)
	public String EditNews(Model model,@PathVariable("id") int id) {
		model.addAttribute("news", this.newsService.getNewsById(id));
		return "admin/news/editnews";
	}
	@RequestMapping(value = "quan-ly/news/edit", method = RequestMethod.POST, produces = "application/x-www-form-urlencoded;charset=UTF-8")
	public ModelAndView EditNews(@ModelAttribute("news") News news) {
		ModelAndView mv = new ModelAndView("admin/news/news");
		this.newsService.UpdateNews(news);
		mv.addObject("allnew", this.newsService.AllNews());		
		return mv;
	}
	
	
}
