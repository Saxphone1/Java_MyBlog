package com.yang.factory;

import com.yang.dao.PhotoDAO;
import com.yang.daoimpl.PhotoDAOImpl;

public class PhotoFactory {
	public static PhotoDAO getPhotoDAOInstance(){
		return new PhotoDAOImpl();
	}
}
