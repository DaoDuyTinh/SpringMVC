package com.daoduytinh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.daoduytinh.dao.BannerDAO;
import com.daoduytinh.model.Banner;

@Service
public class BannerServiceImpl implements BannerService{
	@Autowired
	private BannerDAO bannerDAO;

	public void setBannerDAO(BannerDAO bannerDAO) {
		this.bannerDAO = bannerDAO;
	}
	@Transactional
	public List<Banner> listBannertop() {
		return this.bannerDAO.listBannertop();
	}
	@Transactional
	public List<Banner> listBannerbottom(){
		return this.bannerDAO.listBannerbottom();
	}
}
