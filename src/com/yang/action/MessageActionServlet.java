package com.yang.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yang.bean.Message;
import com.yang.factory.MessageFactory;
import com.yang.util.BaseServlet;
import com.yang.util.RequestUtil;
import com.yang.util.WebUtil;

/**
 * Servlet implementation class MessageActionServlet
 */
@WebServlet(
		urlPatterns={"/action.message"},
		name="/MessageActionServlet")
public class MessageActionServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MessageActionServlet() {
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
		Message message = new Message();
		MessageFactory factory = new MessageFactory();
		if(type.equals("show")){
			List<Message> list = factory.getMessageDAOInstance().show_Message_list();
			request.setAttribute("count", list.size());
			request.setAttribute("list", list);
			WebUtil.forward(request, response, "show_Message.jsp");
		}else if(type.equals("submit")){
			String m_name = RequestUtil.getString(request, "m_name");
			String m_text = RequestUtil.getString(request, "m_text");
			message.setM_name(m_name);
			message.setM_text(m_text);
			factory.getMessageDAOInstance().save_Msssage(message);
//			List<Message> list = factory.getMessageDAOInstance().show_Message_list();
//			request.setAttribute("count", list.size());
//			request.setAttribute("list", list);
//			WebUtil.forward(request, response, "show_Message.jsp");
//			WebUtil.redirect(request, response, "action.message?type=show");
			response.sendRedirect("action.message?type=show");
		}
	}

}
