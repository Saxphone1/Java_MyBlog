package com.yang.daoimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.yang.bean.Message;
import com.yang.dao.MessageDAO;
import com.yang.util.DBUtil;

public class MessageDAOImpl implements MessageDAO {

	@Override
	public void save_Msssage(Message message) {
		// TODO Auto-generated method stub
		Connection conn = DBUtil.getConnectDb();
		String sql = "insert into message(m_name,m_text,m_addtime) value(?,?,?)";
		PreparedStatement stm = null;
		try {
			stm = conn.prepareStatement(sql);
			stm.setString(1, message.getM_name());
			stm.setString(2, message.getM_text());
			stm.setString(3, new Date().toLocaleString());
			stm.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public List<Message> show_Message_list() {
		// TODO Auto-generated method stub
		List<Message> list = new ArrayList<Message>();
		Connection conn = DBUtil.getConnectDb();
		String sql = "select * from message";
		PreparedStatement stm = null;
		ResultSet rs = null;
		try {
			stm = conn.prepareStatement(sql);
			rs = stm.executeQuery();
			while(rs.next()){
				Message message = new Message();
				message.setM_id(rs.getInt("m_id"));
				message.setM_addtime(rs.getTimestamp("m_addtime"));
				message.setM_name(rs.getString("m_name"));
				message.setM_text(rs.getString("m_text"));
				list.add(message);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}

}
