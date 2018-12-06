package com.icss.bookshopssm.entity;

/**
 * 收货信息实体类
 * 
 * @author Giselle
 */
public class Recipient {
	private int recipientid; // 收货id
	private String address; // 收货地址
	private String recipientname; // 收货人姓名
	private String recipientphone; // 收货人手机

	public int getRecipientid() {
		return recipientid;
	}

	public String getAddress() {
		return address;
	}

	public String getRecipientname() {
		return recipientname;
	}

	public String getRecipientphone() {
		return recipientphone;
	}

	public void setRecipientid(int recipientid) {
		this.recipientid = recipientid;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public void setRecipientname(String recipientname) {
		this.recipientname = recipientname;
	}

	public void setRecipientphone(String recipientphone) {
		this.recipientphone = recipientphone;
	}

	@Override
	public String toString() {
		return "Recipient [recipientid=" + recipientid + ", address=" + address + ", recipientname=" + recipientname
				+ ", recipientphone=" + recipientphone + "]";
	}

}
