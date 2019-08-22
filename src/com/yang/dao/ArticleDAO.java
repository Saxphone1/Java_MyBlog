package com.yang.dao;

import java.util.List;

import com.yang.bean.Article;

public interface ArticleDAO {
	public List<Article> show_Article_list();
	public Article show_Article_All(int a_id);
}
