package com.daoduytinh.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.daoduytinh.model.Banner;

public interface BannerDAO {
	public List<Banner> listBannertop() ;
	public List<Banner> listBannerbottom();
}
