package com.daoduytinh.service;

import java.util.List;

import com.daoduytinh.model.News;

public interface NewsService {
	public List<News> AllNews();
	public void AddNews(News n);
	public void UpdateNews(News n);
	public News getNewsById(int id);
}
