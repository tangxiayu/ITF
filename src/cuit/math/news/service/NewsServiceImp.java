package cuit.math.news.service;

import cuit.math.news.dao.NewsDao;

public class NewsServiceImp {

	NewsDao newsdao;
	public void setNewsDao(NewsDao newsdao){
		this.newsdao = newsdao;
	}
}
