package com.icss.bookshopssm.entity;

/**
 * �û�ʵ����
 * 
 * @author Giselle
 */
public class UserEntity {
	private int userid;  //�û�id
	private String username;  //�û�����
	private String password;  //�û�����
	private String phone; //�ֻ���
	private String email; //����
	private String role; //��ɫ 1-��ͨ�û�   2-����Ա
	private String status;  //�˻�״̬ 0-����  1-���
	private double account;  //�˻����

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
