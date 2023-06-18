package org.ht.model;

public class GoodsVO { 
	
	private String g_num;
	private String g_name;
	private String g_kind;
	private String g_price;
	private String g_color;
	private String g_size;
	private String g_content;
	private String g_image;
	private String g_useyn;
	private String g_regdate;
	
	private ImagesVO images; // ImagesVO 모델 추가
	
	public String getG_num() {
		return g_num;
	}
	public void setG_num(String g_num) {
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
	public String getG_price() {
		return g_price;
	}
	public void setG_price(String g_price) {
		this.g_price = g_price;
	}
	public String getG_color() {
		return g_color;
	}
	public void setG_color(String g_color) {
		this.g_color = g_color;
	}
	public String getG_size() {
		return g_size;
	}
	public void setG_size(String g_size) {
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
	
	public ImagesVO getImages() {
		return images;
	}
	
	public void setImages(ImagesVO images) {
		this.images = images;
	}
	
	@Override
	public String toString() {
		return "GoodsVO [g_num=" + g_num + ", g_name=" + g_name + ", g_kind=" + g_kind + ", g_price=" + g_price
				+ ", g_color=" + g_color + ", g_size=" + g_size + ", g_content=" + g_content + ", g_image=" + g_image
				+ ", g_useyn=" + g_useyn + ", g_regdate=" + g_regdate + ", images=" + images + "]";
	}

}

/*package org.ht.model;

import java.util.List;

public class GoodsVO { 
	
	private String g_num;
	private String g_name;
	private String g_kind;
	private String g_price;
	private List<String> g_color;
	private List<String> g_size;
	private String g_content;
	private String g_image;
	private String g_useyn;
	private String g_regdate;
	
	public String getG_num() {
		return g_num;
	}
	public void setG_num(String g_num) {
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
	public String getG_price() {
		return g_price;
	}
	public void setG_price(String g_price) {
		this.g_price = g_price;
	}
	public List<String> getG_color() {
		return g_color;
	}
	public void setG_color(List<String> g_color) {
		this.g_color = g_color;
	}
	public List<String> getG_size() {
		return g_size;
	}
	public void setG_size(List<String> g_size) {
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
				+ ", g_color=" + g_color + ", g_size=" + g_size + ", g_content=" + g_content
				+ ", g_image=" + g_image + ", g_useyn=" + g_useyn + ", g_regdate=" + g_regdate + "]";
	}
}
*/