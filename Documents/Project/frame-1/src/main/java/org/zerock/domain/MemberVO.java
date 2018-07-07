package org.zerock.domain;

public class MemberVO {
	private int mno;
	private String name;
	private String email;
	private String phone;
	private String passwd;
	public int getMno() {
		return mno;
	}
	public void setMno(int mno) {
		this.mno = mno;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	@Override
	public String toString() {
		return "MemberVO [mno=" + mno + ", name=" + name + ", email=" + email + ", phone=" + phone + ", passwd="
				+ passwd + "]";
	}
	
	
	
	
	
}
