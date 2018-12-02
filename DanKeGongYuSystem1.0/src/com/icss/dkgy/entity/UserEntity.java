package com.icss.dkgy.entity;

public class UserEntity {
	private int userid;  //用户id
	private String username;  //用户姓名
	private String userpwd;  //用户密码
	private String phone;
	private String sex;		//性别
	private String constellation; //星座
	private String imgpath;
	private String status;  //账户状态 0-正常  1-封号
	
	
	
	/**
	 * 
	 */
	public UserEntity() {
		super();
		// TODO Auto-generated constructor stub
	}
	/**
	 * @param username
	 * @param sex
	 * @param phone
	 */
	public UserEntity(String username, String sex, String phone) {
		super();
		this.username = username;
		this.sex = sex;
		this.phone = phone;
	}
	/**
	 * @param userid
	 * @param username
	 * @param userpwd
	 * @param sex
	 * @param constellation
	 * @param phone
	 * @param status
	 * @param email
	 * @param role
	 */
	public UserEntity(int userid, String username, String userpwd, String sex, String constellation, String phone,
			String status) {
		super();
		this.userid = userid;
		this.username = username;
		this.userpwd = userpwd;
		this.sex = sex;
		this.constellation = constellation;
		this.phone = phone;
		this.status = status;
		
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUserpwd() {
		return userpwd;
	}
	public void setUserpwd(String userpwd) {
		this.userpwd = userpwd;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getConstellation() {
		return constellation;
	}
	public void setConstellation(String constellation) {
		this.constellation = constellation;
	}
	public String getImgpath() {
		return imgpath;
	}
	public void setImgpath(String imgpath) {
		this.imgpath = imgpath;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "UserEntity [userid=" + userid + ", username=" + username + ", userpwd=" + userpwd + ", phone=" + phone
				+ ", sex=" + sex + ", constellation=" + constellation + ", imgpath=" + imgpath + ", status=" + status
				+ "]";
	}
	
	
	
	
	
	
}
