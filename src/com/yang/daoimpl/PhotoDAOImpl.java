package com.yang.daoimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.yang.bean.Photo;
import com.yang.dao.PhotoDAO;
import com.yang.util.DBUtil;

public class PhotoDAOImpl implements PhotoDAO {

	@Override
	public List<Photo> Show_Name_list() {
		// TODO Auto-generated method stub
		List<Photo> list = null;
		
		return list;
	}

	@Override
	public List<Photo> Show_Time_list() {
		// TODO Auto-generated method stub
		List<Photo> list = new ArrayList<Photo>();
		Connection conn = DBUtil.getConnectDb();
		String sql = "select * from photo";
		PreparedStatement stm = null;
		ResultSet rs = null;
		try {
			stm = conn.prepareStatement(sql);
			rs = stm.executeQuery();
			while(rs.next()){
				Photo photo = new Photo();
				photo.setP_addtime(rs.getTimestamp("p_addtime"));
				photo.setP_adduser(rs.getString("p_adduser"));
				photo.setP_id(rs.getInt("p_id"));
				photo.setP_name(rs.getString("p_name"));
				photo.setP_note(rs.getString("p_note"));
				photo.setP_src(rs.getString("p_src"));
				photo.setP_type(rs.getInt("p_type"));
				
				list.add(photo);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

}
