package com.daoduytinh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.daoduytinh.dao.NewsDAO;
import com.daoduytinh.model.News;


@Service
public class NewsServiceImpl implements NewsService{
	@Autowired
	private NewsDAO newsDAO;

	public void setNewsDAO(NewsDAO newsDAO) {
		this.newsDAO = newsDAO;
	}
	@Transactional
	public List<News> AllNews() {
		return this.newsDAO.AllNews();
	}
	@Transactional
	public void AddNews(News n) {
		this.newsDAO.AddNews(n);
	}
	@Transactional
	public void UpdateNews(News n) {
		this.newsDAO.UpdateNews(n);
	}
	@Transactional
	public News getNewsById(int id) {
		return this.newsDAO.getNewsById(id);
	}
}
