package org.ht.model;

public class MemberVO{
	private String id;
	private String password;
	private String name;
	private String phone;
	private String gender;
	private String birthMonth;
	private String birthDay;
	private String interest;
	private String postnum;
	private String addr1;
	private String addr2;
	private String addr3;
	private String marketing_agree;
	private String regdate;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBirthMonth() {
		return birthMonth;
	}
	public void setBirthMonth(String birthMonth) {
		this.birthMonth = birthMonth;
	}
	public String getBirthDay() {
		return birthDay;
	}
	public void setBirthDay(String birthDay) {
		this.birthDay = birthDay;
	}
	public String getInterest() {
		return interest;
	}
	public void setInterest(String interest) {
		this.interest = interest;
	}
	public String getPostnum() {
		return postnum;
	}
	public void setPostnum(String postnum) {
		this.postnum = postnum;
	}
	public String getAddr1() {
		return addr1;
	}
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}
	public String getAddr2() {
		return addr2;
	}
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
	public String getAddr3() {
		return addr3;
	}
	public void setAddr3(String addr3) {
		this.addr3 = addr3;
	}
	public String getMarketing_agree() {
		return marketing_agree;
	}
	public void setMarketing_agree(String marketing_agree) {
		this.marketing_agree = marketing_agree;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	
	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", password=" + password + ", name=" + name + ", phone=" + phone + ", gender="
				+ gender + ", birthMonth=" + birthMonth + ", birthDay=" + birthDay + ", interest=" + interest
				+ ", postnum=" + postnum + ", addr1=" + addr1 + ", addr2=" + addr2 + ", addr3=" + addr3
				+ ", marketing_agree=" + marketing_agree + ", regdate=" + regdate + "]";
	}
}