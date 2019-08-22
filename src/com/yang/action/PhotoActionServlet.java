package com.yang.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yang.bean.Photo;
import com.yang.factory.PhotoFactory;
import com.yang.util.BaseServlet;
import com.yang.util.RequestUtil;
import com.yang.util.WebUtil;

/**
 * Servlet implementation class PhotoActionServlet
 */
@WebServlet(
		urlPatterns={"/action.photo"},
		name="/PhotoActionServlet")
public class PhotoActionServlet extends BaseServlet{
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PhotoActionServlet() {
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
		String type = RequestUtil.getString(request, "type");
		PhotoFactory factory = new PhotoFactory();
		Photo photo = new Photo();
		if(type.equals("all_list")){
			List<Photo> list = factory.getPhotoDAOInstance().Show_Time_list();
			request.setAttribute("list", list);
			WebUtil.forward(request, response, "photo_show_Time.jsp");
		}else if(type.equals("name_list")){
			List<Photo> list = factory.getPhotoDAOInstance().Show_Time_list();
			request.setAttribute("list", list);
			WebUtil.forward(request, response, "photo_show_Time.jsp");
		}else if(type.equals("time_list")){
			List<Photo> list = factory.getPhotoDAOInstance().Show_Name_list();
			request.setAttribute("list", list);
			WebUtil.forward(request, response, "photo_show_Name.jsp");
		}
	}
}
