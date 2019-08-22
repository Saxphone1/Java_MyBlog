package com.yang.factory;

import com.yang.dao.MessageDAO;
import com.yang.daoimpl.MessageDAOImpl;

public class MessageFactory {
	public static MessageDAO getMessageDAOInstance(){
		return new MessageDAOImpl();
	}
}
