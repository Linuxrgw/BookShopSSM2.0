package com.icss.bookshopssm.entity;

/**
 * �ջ���Ϣʵ����
 * 
 * @author Giselle
 */
public class Recipient {
	private int recipientid; // �ջ�id
	private String address; // �ջ���ַ
	private String recipientname; // �ջ�������
	private String recipientphone; // �ջ����ֻ�

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
