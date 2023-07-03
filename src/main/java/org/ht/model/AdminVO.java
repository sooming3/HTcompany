package org.ht.model;

public class AdminVO {
	private int adminKey;
	private String adminid;
	private String adminpwd;
	private String name;
	private int auth;
	
	public int getAdminKey() {
		return adminKey;
	}
	public void setAdminKey(int adminKey) {
		this.adminKey = adminKey;
	}
	public String getAdminid() {
		return adminid;
	}
	public void setAdminid(String adminid) {
		this.adminid = adminid;
	}
	public String getAdminpwd() {
		return adminpwd;
	}
	public void setAdminpwd(String adminpwd) {
		this.adminpwd = adminpwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAuth() {
		return auth;
	}
	public void setAuth(int auth) {
		this.auth = auth;
	}
	
	@Override
	public String toString() {
		return "AdminVO [adminKey=" + adminKey + ", adminid=" + adminid + ", adminpwd=" + adminpwd + ", name=" + name
				+ ", auth=" + auth + "]";
	}
	
	
}
