package org.ht.model;

public class GoodsVO { 
	
	private int g_num;
	private String g_name;
	private String g_kind;
	private int g_price;
	private int g_color;
	private int g_size;
	private String g_content;
	private String g_image;
	private String g_useyn;
	private String g_regdate;
	
	
	public int getG_num() {
		return g_num;
	}
	public void setG_num(int g_num) {
		this.g_num = g_num;
	}
	public String getG_name() {
		return g_name;
	}
	public void setG_name(String g_name) {
		this.g_name = g_name;
	}
	public String getG_kind() {
		return g_kind;
	}
	public void setG_kind(String g_kind) {
		this.g_kind = g_kind;
	}
	public int getG_price() {
		return g_price;
	}
	public void setG_price(int g_price) {
		this.g_price = g_price;
	}
	public int getG_color() {
		return g_color;
	}
	public void setG_color(int g_color) {
		this.g_color = g_color;
	}
	public int getG_size() {
		return g_size;
	}
	public void setG_size(int g_size) {
		this.g_size = g_size;
	}
	public String getG_content() {
		return g_content;
	}
	public void setG_content(String g_content) {
		this.g_content = g_content;
	}
	public String getG_image() {
		return g_image;
	}
	public void setG_image(String g_image) {
		this.g_image = g_image;
	}
	public String getG_useyn() {
		return g_useyn;
	}
	public void setG_useyn(String g_useyn) {
		this.g_useyn = g_useyn;
	}
	public String getG_regdate() {
		return g_regdate;
	}
	public void setG_regdate(String g_regdate) {
		this.g_regdate = g_regdate;
	}
	
	@Override
	public String toString() {
		return "GoodsVO [g_num=" + g_num + ", g_name=" + g_name + ", g_kind=" + g_kind + ", g_price=" + g_price
				+ ", g_color=" + g_color + ", g_size=" + g_size + ", g_content=" + g_content + ", g_image=" + g_image
				+ ", g_useyn=" + g_useyn + ", g_regdate=" + g_regdate + "]";
	}
	
	
}
