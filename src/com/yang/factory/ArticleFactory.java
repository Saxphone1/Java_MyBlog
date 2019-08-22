package com.yang.factory;

import com.yang.dao.ArticleDAO;
import com.yang.daoimpl.ArticleDAOImpl;

public class ArticleFactory {
	public static ArticleDAO getArticleInstance(){
		return new ArticleDAOImpl();
	}
}
