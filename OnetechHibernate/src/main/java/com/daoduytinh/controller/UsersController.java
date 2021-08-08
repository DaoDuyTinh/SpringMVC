package com.daoduytinh.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.daoduytinh.model.Users;
import com.daoduytinh.service.UsersService;

@Controller
public class UsersController {
	private UsersService usersService;
	
	@Autowired(required = true)
	@Qualifier(value = "usersService")
	public void setUsersService(UsersService us) {
		this.usersService = us;
	}
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String Login(Model model) {
		model.addAttribute("user", new Users());
		return "user/login";
	}
	@RequestMapping(value = "register", method = RequestMethod.GET)
	public String ViewRegister(Model model) {		
		model.addAttribute("user", new Users());
		return "user/register";
	}
	@RequestMapping(value = "register", method = RequestMethod.POST)
	public ModelAndView CreateRegister(@ModelAttribute("user") Users user) {	
		ModelAndView mv = new ModelAndView("user/register");
		if(usersService.checkCreate(user)==null)
		{	
			this.usersService.AddAccount(user);
			mv.addObject("message", "Đăng ký thành công");
		}
		else
		{
			mv.addObject("message", "Tài khoản đã được sử dụng");
		}
		return mv;
	}
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public ModelAndView Login(HttpSession session,@ModelAttribute("user") Users user) {	
		user = usersService.checkAccount(user);
		ModelAndView mv = new ModelAndView("user/login");
		if(user != null) {
			mv.setViewName("redirect:/");
			session.setAttribute("LoginInfo",user);
		}
		else
		{
			mv.addObject("sta","Sai tài khoản hoặc mật khẩu");
		}
		return mv;	
	}
	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String Logout(HttpSession session, HttpServletRequest request) {	
		session.removeAttribute("LoginInfo");
		return "redirect:"+request.getHeader("Referer");
	}
	
}
