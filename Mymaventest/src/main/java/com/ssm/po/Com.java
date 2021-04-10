package com.ssm.po;

public class Com {
	private int id;
	private String cname;
	private String content;
	private int price;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "id:\t"+id+"\ncname:\t"+cname+"\ncontent:\t"+content+"\nprice:\t"+price;
	}
}
