package org.ht.model;

public class ImagesVO {
	
	private String g_num;
	private String g_image1;
	private String g_image2;
	private String g_image3;
	
	public String getG_num() {
		return g_num;
	}
	public void setG_num(String g_num) {
		this.g_num = g_num;
	}
	public String getG_image1() {
		return g_image1;
	}
	public void setG_image1(String g_image1) {
		this.g_image1 = g_image1;
	}
	public String getG_image2() {
		return g_image2;
	}
	public void setG_image2(String g_image2) {
		this.g_image2 = g_image2;
	}
	public String getG_image3() {
		return g_image3;
	}
	public void setG_image3(String g_image3) {
		this.g_image3 = g_image3;
	}
	
	@Override
	public String toString() {
		return "ImagesVO [g_num=" + g_num + ", g_image1=" + g_image1 + ", g_image2=" + g_image2 + ", g_image3=" + g_image3 + "]";
	}

}
