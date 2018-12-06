package com.icss.bookshopssm.entity;

/**
 * 用户实体类
 * 
 * @author Giselle
 */
public class UserEntity {
	private int userid;  //用户id
	private String username;  //用户姓名
	private String password;  //用户密码
	private String phone; //手机号
	private String email; //邮箱
	private String role; //角色 1-普通用户   2-管理员
	private String status;  //账户状态 0-正常  1-封号
	private double account;  //账户余额

	public UserEntity() {
		super();
	}


	public UserEntity(int userid, String username, String password, String phone, String email, String role,
			String status, double account) {
		super();
		this.userid = userid;
		this.username = username;
		this.password = password;
		this.phone = phone;
		this.email = email;
		this.role = role;
		this.status = status;
		this.account = account;
	}


	public int getUserid() {
		return userid;
	}

	public String getUsername() {
		return username;
	}


	public String getPhone() {
		return phone;
	}

	public String getEmail() {
		return email;
	}

	public String getRole() {
		return role;
	}

	public String getStatus() {
		return status;
	}

	public double getAccount() {
		return account;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public void setUsername(String username) {
		this.username = username;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public void setAccount(double account) {
		this.account = account;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	@Override
	public String toString() {
		return "UserEntity [userid=" + userid + ", username=" + username + ", password=" + password + ", phone=" + phone
				+ ", email=" + email + ", role=" + role + ", status=" + status + ", account=" + account + "]";
	}


}
