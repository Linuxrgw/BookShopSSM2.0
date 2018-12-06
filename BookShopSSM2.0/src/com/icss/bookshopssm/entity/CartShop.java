package com.icss.bookshopssm.entity;

/**
 * ¹ºÎï³µ
 * 
 * @author Giselle
 */

public class CartShop {
	
	private int bookid;
	private int userid;
	private String bname;
	private int count;
	private String author;
	private double price;
	private String imgpath;

	public int getBookid() {
		return bookid;
	}

	public int getUserid() {
		return userid;
	}

	public String getBname() {
		return bname;
	}

	public int getCount() {
		return count;
	}

	public String getAuthor() {
		return author;
	}

	public double getPrice() {
		return price;
	}

	public void setBookid(int bookid) {
		this.bookid = bookid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public void setBname(String bname) {
		this.bname = bname;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "CartShop [bookid=" + bookid + ", userid=" + userid + ", bname=" + bname + ", count=" + count
				+ ", author=" + author + ", price=" + price + "]";
	}

	public String getImgpath() {
		return imgpath;
	}

	public void setImgpath(String imgpath) {
		this.imgpath = imgpath;
	}
}