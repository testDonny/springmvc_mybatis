package com.ssm.po;

import java.util.List;

public class Shop {
	private int id;
	private String cid;		//商品id
	private String cname;	//商品名稱
	private String price;	//商品單價
	private String Quantity;//商品數量
	private String sum;		//商品總額
	private String userid;
	private String shipment;
	private List<Shop> shops;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getShipment() {
		return shipment;
	}
	public void setShipment(String shipment) {
		this.shipment = shipment;
	}
	public List<Shop> getShops() {
		return shops;
	}
	public void setShops(List<Shop> shops) {
		this.shops = shops;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getQuantity() {
		return Quantity;
	}
	public void setQuantity(String quantity) {
		Quantity = quantity;
	}
	public String getSum() {
		return sum;
	}
	public void setSum(String sum) {
		this.sum = sum;
	}
	@Override
	public String toString() {
		return "<tr><td class='t'>"+cid+"</td><td class='t'>"+cname+"</td><td class='t'>"+price+"</td>"+
				"<td class='t'>"+Quantity+"</td><td class='t'>"+sum+"<td class='t'>"+shipment+"</td></tr>";
	}
	
}
