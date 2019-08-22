package com.yang.daoimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.yang.bean.Article;
import com.yang.dao.ArticleDAO;
import com.yang.util.DBUtil;

public class ArticleDAOImpl implements ArticleDAO {

	@Override
	public List<Article> show_Article_list() {
		// TODO Auto-generated method stub
		List<Article> list = new ArrayList<Article>();
		Connection conn = DBUtil.getConnectDb();
		String sql = "select * from article";
		PreparedStatement stm = null;
		ResultSet rs = null;
		try {
			stm = conn.prepareStatement(sql);
			rs = stm.executeQuery();
			while(rs.next()){
				Article article = new Article();
				article.setA_addtime(rs.getTimestamp("a_addtime"));
				article.setA_adduser(rs.getString("a_adduser"));
				article.setA_begin(rs.getString("a_begin"));
				article.setA_comment(rs.getInt("a_comment"));
				article.setA_id(rs.getInt("a_id"));
				article.setA_text(rs.getString("a_text"));
				article.setA_title(rs.getString("a_title"));
				article.setA_type(rs.getString("a_type"));
				article.setA_visit(rs.getInt("a_visit"));
				list.add(article);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public Article show_Article_All(int a_id) {
		// TODO Auto-generated method stub
		Article article = new Article();
		Connection conn = DBUtil.getConnectDb();
		String sql = "select * from article where a_id=?";
		PreparedStatement stm = null;
		ResultSet rs = null;
		try {
			stm = conn.prepareStatement(sql);
			stm.setInt(1, a_id);
			rs = stm.executeQuery();
			if(rs.next()){
				article.setA_addtime(rs.getTimestamp("a_addtime"));
				article.setA_adduser(rs.getString("a_adduser"));
				article.setA_begin(rs.getString("a_begin"));
				article.setA_comment(rs.getInt("a_comment"));
				article.setA_id(rs.getInt("a_id"));
				article.setA_text(rs.getString("a_text"));
				article.setA_title(rs.getString("a_title"));
				article.setA_type(rs.getString("a_type"));
				article.setA_visit(rs.getInt("a_visit"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return article;
	}

}
