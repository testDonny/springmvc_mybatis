package com.ssm.po;


public class User {
private Integer id;
private String userName;
private String passWord;
private String email;
private String phone;
private String idCard;
//private management m=new management();
//
//public management getM() {
//	
//	return m;
//}
//public void setM(management m) {
//	this.m = m;
//}
public Integer getId() {
	return id;
}
public void setId(Integer id) {
	this.id = id;
}
public String getUsername() {
	return userName;
}
public void setUsername(String userName) {
	this.userName = userName;
}
public String getPassWord() {
	return passWord;
}
public void setPassword(String passWord) {
	this.passWord = passWord;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPhone() {
	return phone;
}
public void setPhone(String phone) {
	this.phone = phone;
}

public String getIdCard() {
	return idCard;
}
public void setIdCard(String idCard) {
	this.idCard = idCard;
}
@Override
public String toString() {
	return "username= "+userName+",password= "+passWord+
	"\n eamil= "+email+",phone= "+phone+",idcard= "+idCard;
}
	
}
