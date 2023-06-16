package org.ht.model;

public class CartVO {
	
	private String c_num;
	private String c_id;
	private String c_pronum;
	private String c_name;
	private String c_price;
	private String c_color;
	private String c_size;
	private int c_quantity; 
	private String c_result;
	private String c_indate;
	
	public String getC_num() {
		return c_num;
	}
	public void setC_num(String c_num) {
		this.c_num = c_num;
	}
	public String getC_id() {
		return c_id;
	}
	public void setC_id(String c_id) {
		this.c_id = c_id;
	}
	public String getC_pronum() {
		return c_pronum;
	}
	public void setC_pronum(String c_pronum) {
		this.c_pronum = c_pronum;
	}
	public String getC_name() {
		return c_name;
	}
	public void setC_name(String c_name) {
		this.c_name = c_name;
	}
	public String getC_price() {
		return c_price;
	}
	public void setC_price(String c_price) {
		this.c_price = c_price;
	}
	public String getC_color() {
		return c_color;
	}
	public void setC_color(String c_color) {
		this.c_color = c_color;
	}
	public String getC_size() {
		return c_size;
	}
	public void setC_size(String c_size) {
		this.c_size = c_size;
	}
	public int getC_quantity() {
		return c_quantity;
	}
	public void setC_quantity(int c_quantity) {
		this.c_quantity = c_quantity;
	}
	public String getC_result() {
		return c_result;
	}
	public void setC_result(String c_result) {
		this.c_result = c_result;
	}
	public String getC_indate() {
		return c_indate;
	}
	public void setC_indate(String c_indate) {
		this.c_indate = c_indate;
	}
	
	@Override
	public String toString() {
		return "CartVO [c_num=" + c_num + ", c_id=" + c_id + ", c_pronum=" + c_pronum + ", c_name=" + c_name
				+ ", c_price=" + c_price + ", c_color=" + c_color + ", c_size=" + c_size + ", c_quantity=" + c_quantity
				+ ", c_result=" + c_result + ", c_indate=" + c_indate + "]";
	}
	 

	
}
