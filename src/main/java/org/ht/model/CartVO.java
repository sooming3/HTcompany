package org.ht.model;

public class CartVO {
	
	private int c_num;
	private String c_id;
	private int c_prodnum;
	private int c_quantity;
	private String c_result;
	private String c_indate;
	
	
	public int getC_num() {
		return c_num;
	}
	public void setC_num(int c_num) {
		this.c_num = c_num;
	}
	public String getC_id() {
		return c_id;
	}
	public void setC_id(String c_id) {
		this.c_id = c_id;
	}
	public int getC_prodnum() {
		return c_prodnum;
	}
	public void setC_prodnum(int c_prodnum) {
		this.c_prodnum = c_prodnum;
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
		return "CartVO [c_num=" + c_num + ", c_id=" + c_id + ", c_prodnum=" + c_prodnum + ", c_quantity=" + c_quantity
				+ ", c_result=" + c_result + ", c_indate=" + c_indate + "]";
	}
	
	
}
