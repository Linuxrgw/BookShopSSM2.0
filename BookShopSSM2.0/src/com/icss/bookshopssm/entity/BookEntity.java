package com.icss.bookshopssm.entity;

import java.sql.Timestamp;

import org.springframework.format.annotation.DateTimeFormat;



/**
*ͼ���ʵ����
*@author Giselle
*/
public class BookEntity {
	private int bookid;  //ͼ��id
	private String isbn;  //ͼ����
	private String bname;//ͼ������
	private String imgpath;//��ҳͼƬ
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Timestamp pubdate;//����ʱ��
	private String press;//������
	private String author;//����
	private double price;//����
	private String bookstatus;//ͼ��״̬   0--�ϼ�  1--�¼�
	private int typeid;//ͼ������id
	private String createdate;//����ʱ��
	private String salesvolume;//����
	private int storage;//���
	private String bookinfo;//ͼ����Ϣ
	private String adddate;//�ϼ�ʱ��
	private String downdate;//�¼�ʱ��
	
	public BookEntity() {
	}
	
	public BookEntity(String isbn, String bname, String imgpath, Timestamp pubdate, String press, String author,
			double price, String bookstatus, int typeid, String createdate, String salesvolume, int storage,
			String bookinfo, String adddate, String downdate) {
		this.isbn = isbn;
		this.bname = bname;
		this.imgpath = imgpath;
		this.pubdate = pubdate;
		this.press = press;
		this.author = author;
		this.price = price;
		this.bookstatus = bookstatus;
		this.typeid = typeid;
		this.createdate = createdate;
		this.salesvolume = salesvolume;
		this.storage = storage;
		this.bookinfo = bookinfo;
		this.adddate = adddate;
		this.downdate = downdate;
	}
	public int getBookid() {
		return bookid;
	}
	public String getIsbn() {
		return isbn;
	}
	public String getBname() {
		return bname;
	}
	public String getImgpath() {
		return imgpath;
	}
	public Timestamp getPubdate() {
		return pubdate;
	}
	public String getPress() {
		return press;
	}
	public String getAuthor() {
		return author;
	}
	public double getPrice() {
		return price;
	}
	public String getBookstatus() {
		return bookstatus;
	}
	public int getTypeid() {
		return typeid;
	}
	public String getCreatedate() {
		return createdate;
	}
	public String getSalesvolume() {
		return salesvolume;
	}
	public String getBookinfo() {
		return bookinfo;
	}
	public String getAdddate() {
		return adddate;
	}
	public String getDowndate() {
		return downdate;
	}
	public void setBookid(int bookid) {
		this.bookid = bookid;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public void setImgpath(String imgpath) {
		this.imgpath = imgpath;
	}
	public void setPubdate(Timestamp pubdate) {
		this.pubdate = pubdate;
	}
	public void setPress(String press) {
		this.press = press;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public void setBookstatus(String bookstatus) {
		this.bookstatus = bookstatus;
	}
	public void setTypeid(int typeid) {
		this.typeid = typeid;
	}
	public void setCreatedate(String createdate) {
		this.createdate = createdate;
	}
	public void setSalesvolume(String salesvolume) {
		this.salesvolume = salesvolume;
	}
	public void setBookinfo(String bookinfo) {
		this.bookinfo = bookinfo;
	}
	public void setAdddate(String adddate) {
		this.adddate = adddate;
	}
	public void setDowndate(String downdate) {
		this.downdate = downdate;
	}
	
	public int getStorage() {
		return storage;
	}
	public void setStorage(int storage) {
		this.storage = storage;
	}
	@Override
	public String toString() {
		return "Book [bookid=" + bookid + ", isbn=" + isbn + ", bname=" + bname + ", imgpath=" + imgpath + ", pubdate="
				+ pubdate + ", press=" + press + ", author=" + author + ", price=" + price + ", bookstatus="
				+ bookstatus + ", typeid=" + typeid + ", createdate=" + createdate + ", salesvolume=" + salesvolume
				+ ", storage=" + storage + ", bookinfo=" + bookinfo + ", adddate=" + adddate + ", downdate=" + downdate
				+ "]";
	}
	
	
	

}
