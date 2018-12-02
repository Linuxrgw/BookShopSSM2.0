package com.icss.dkgy.entity;

import java.sql.Timestamp;

public class RoomEntity {
	private int roomnum ;   //房屋编号
	private String address;  //房屋地址
	private double price;	//租金
	private double area;	//面积
	private int typeid;		//户型编号
	private String paymethod;	//支付方式
	private String status;	//房屋状态
	private String subway;	//地铁
	private String imgpath;	//图片
	private int ownerid;	//	业主编号
	private Timestamp rentdate;	//租期
	private String comment;	 	//描述
	public int getRoomnum() {
		return roomnum;
	}
	
	/**
	 * 
	 */
	public RoomEntity() {
		super();
	}
	

	/**
	 * @param roomnum
	 * @param address
	 * @param price
	 * @param area
	 * @param typeid
	 * @param paymethod
	 * @param status
	 * @param subway
	 * @param imgpath
	 * @param ownerid
	 * @param rentdate
	 * @param comment
	 */
	public RoomEntity( String address, double price, double area, int typeid, String paymethod,
			String status, String subway, String imgpath, int ownerid, Timestamp rentdate, String comment) {
		super();
		this.address = address;
		this.price = price;
		this.area = area;
		this.typeid = typeid;
		this.paymethod = paymethod;
		this.status = status;
		this.subway = subway;
		this.imgpath = imgpath;
		this.ownerid = ownerid;
		this.rentdate = rentdate;
		this.comment = comment;
	}

	/**
	 * @param roomnum
	 * @param address
	 * @param price
	 * @param area
	 * @param typeid
	 * @param paymethod
	 * @param status
	 * @param subway
	 * @param imgpath
	 * @param ownerid
	 * @param rentdate
	 * @param comment
	 */
	public RoomEntity(int roomnum, String address, double price, double area, int typeid, String paymethod,
			String status, String subway, String imgpath, int ownerid, Timestamp rentdate, String comment) {
		super();
		this.roomnum = roomnum;
		this.address = address;
		this.price = price;
		this.area = area;
		this.typeid = typeid;
		this.paymethod = paymethod;
		this.status = status;
		this.subway = subway;
		this.imgpath = imgpath;
		this.ownerid = ownerid;
		this.rentdate = rentdate;
		this.comment = comment;
	}

	public void setRoomnum(int roomnum) {
		this.roomnum = roomnum;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public double getArea() {
		return area;
	}
	public void setArea(double area) {
		this.area = area;
	}
	public int getTypeid() {
		return typeid;
	}
	public void setTypeid(int typeid) {
		this.typeid = typeid;
	}
	public String getPaymethod() {
		return paymethod;
	}
	public void setPaymethod(String paymethod) {
		this.paymethod = paymethod;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getSubway() {
		return subway;
	}
	public void setSubway(String subway) {
		this.subway = subway;
	}
	public String getImgpath() {
		return imgpath;
	}
	public void setImgpath(String imgpath) {
		this.imgpath = imgpath;
	}
	public int getOwnerid() {
		return ownerid;
	}
	public void setOwnerid(int ownerid) {
		this.ownerid = ownerid;
	}
	public Timestamp getRentdate() {
		return rentdate;
	}
	public void setRentdate(Timestamp rentdate) {
		this.rentdate = rentdate;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	@Override
	public String toString() {
		return "RoomEntity [roomnum=" + roomnum + ", address=" + address + ", price=" + price + ", area=" + area
				+ ", typeid=" + typeid + ", paymethod=" + paymethod + ", status=" + status + ", subway=" + subway
				+ ", imgpath=" + imgpath + ", ownerid=" + ownerid + ", rentdate=" + rentdate + ", comment=" + comment
				+ "]";
	}
  
}
