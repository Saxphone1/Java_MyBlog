package com.yang.bean;

import java.util.Date;

public class Photo {
private int p_id;
private String p_src;
private String p_name;
private Date p_addtime;
private String p_adduser;
private int p_type;
private String p_note;
public int getP_id() {
	return p_id;
}
public void setP_id(int p_id) {
	this.p_id = p_id;
}
public String getP_src() {
	return p_src;
}
public void setP_src(String p_src) {
	this.p_src = p_src;
}
public String getP_name() {
	return p_name;
}
public void setP_name(String p_name) {
	this.p_name = p_name;
}
public Date getP_addtime() {
	return p_addtime;
}
public void setP_addtime(Date p_addtime) {
	this.p_addtime = p_addtime;
}
public String getP_adduser() {
	return p_adduser;
}
public void setP_adduser(String p_adduser) {
	this.p_adduser = p_adduser;
}
public int getP_type() {
	return p_type;
}
public void setP_type(int p_type) {
	this.p_type = p_type;
}
public String getP_note() {
	return p_note;
}
public void setP_note(String p_note) {
	this.p_note = p_note;
}
}
