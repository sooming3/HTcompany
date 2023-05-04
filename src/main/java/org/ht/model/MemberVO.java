package org.ht.model;

public class MemberVO{
	private String User_id;
	private String User_password;
	private String User_name;
	private String User_phone;
	private String User_gender;
	private String User_birth;
	private String User_interest;
	private String User_addr1;
	private String User_addr2;
	private String User_addr3;
	private String User_marketing_agree;
	private String User_regdate;
	public String getUser_id() {
		return User_id;
	}
	public void setUser_id(String user_id) {
		User_id = user_id;
	}
	public String getUser_password() {
		return User_password;
	}
	public void setUser_password(String user_password) {
		User_password = user_password;
	}
	public String getUser_name() {
		return User_name;
	}
	public void setUser_name(String user_name) {
		User_name = user_name;
	}
	public String getUser_phone() {
		return User_phone;
	}
	public void setUser_phone(String user_phone) {
		User_phone = user_phone;
	}
	public String getUser_gender() {
		return User_gender;
	}
	public void setUser_gender(String user_gender) {
		User_gender = user_gender;
	}
	public String getUser_birth() {
		return User_birth;
	}
	public void setUser_birth(String user_birth) {
		User_birth = user_birth;
	}
	public String getUser_interest() {
		return User_interest;
	}
	public void setUser_interest(String user_interest) {
		User_interest = user_interest;
	}
	public String getUser_addr1() {
		return User_addr1;
	}
	public void setUser_addr1(String user_addr1) {
		User_addr1 = user_addr1;
	}
	public String getUser_addr2() {
		return User_addr2;
	}
	public void setUser_addr2(String user_addr2) {
		User_addr2 = user_addr2;
	}
	public String getUser_addr3() {
		return User_addr3;
	}
	public void setUser_addr3(String user_addr3) {
		User_addr3 = user_addr3;
	}
	public String getUser_marketing_agree() {
		return User_marketing_agree;
	}
	public void setUser_marketing_agree(String user_marketing_agree) {
		User_marketing_agree = user_marketing_agree;
	}
	public String getUser_regdate() {
		return User_regdate;
	}
	public void setUser_regdate(String user_regdate) {
		User_regdate = user_regdate;
	}
	
	@Override
	public String toString() {
		return "MemberVO [User_id=" + User_id + ", User_password=" + User_password + ", User_name=" + User_name
				+ ", User_phone=" + User_phone + ", User_gender=" + User_gender + ", User_birth=" + User_birth
				+ ", User_interest=" + User_interest + ", User_addr1=" + User_addr1 + ", User_addr2=" + User_addr2
				+ ", User_addr3=" + User_addr3 + ", User_marketing_agree=" + User_marketing_agree + ", User_regdate="
				+ User_regdate + "]";
	}
	
	
	
}