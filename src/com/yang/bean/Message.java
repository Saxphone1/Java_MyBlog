package com.yang.bean;

import java.util.Date;

public class Message {
	private int m_id;
	private String m_name;
	private String m_photo;
	private String m_text;
	private Date m_addtime;
	public int getM_id() {
		return m_id;
	}
	public void setM_id(int m_id) {
		this.m_id = m_id;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public String getM_photo() {
		return m_photo;
	}
	public void setM_photo(String m_photo) {
		this.m_photo = m_photo;
	}
	public String getM_text() {
		return m_text;
	}
	public void setM_text(String m_text) {
		this.m_text = m_text;
	}
	public Date getM_addtime() {
		return m_addtime;
	}
	public void setM_addtime(Date m_addtime) {
		this.m_addtime = m_addtime;
	}
}
