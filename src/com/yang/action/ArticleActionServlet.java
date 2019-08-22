package com.yang.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yang.bean.Article;
import com.yang.factory.ArticleFactory;
import com.yang.util.BaseServlet;
import com.yang.util.RequestUtil;
import com.yang.util.WebUtil;

/**
 * Servlet implementation class ArticleActionServlet
 */
@WebServlet(
		urlPatterns={"/action.article"},
		name="/ArticleActionServlet")
public class ArticleActionServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ArticleActionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		int a_id = RequestUtil.getInt(request, "a_id");
		String type = RequestUtil.getString(request, "type");
		ArticleFactory factory = new ArticleFactory();
		if(type.equals("list")){
			List<Article> list = factory.getArticleInstance().show_Article_list();
			request.setAttribute("list", list);
			WebUtil.forward(request, response, "article_show_List.jsp");
		}else if(type.equals("all")){
			Article article = factory.getArticleInstance().show_Article_All(a_id);
			request.setAttribute("article", article);
			WebUtil.forward(request, response, "article_show_All.jsp");
		}
		response.getWriter().print("123");
	}

}
