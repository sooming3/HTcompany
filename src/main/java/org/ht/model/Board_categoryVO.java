package org.ht.model;

public class Board_categoryVO {
	
	 //게시판 카테고리번호
	 private int Board_Category_no;
	 //게시판 카테고리이름 
	 private String Board_Category_name;
	 
	public int getBoard_Category_no() {
		return Board_Category_no;
	}
	public void setBoard_Category_no(int board_Category_no) {
		Board_Category_no = board_Category_no;
	}
	public String getBoard_Category_name() {
		return Board_Category_name;
	}
	public void setBoard_Category_name(String board_Category_name) {
		Board_Category_name = board_Category_name;
	}
	
	@Override
	public String toString() {
		return "Board_categotyVO [Board_Category_no=" + Board_Category_no + ", Board_Category_name="
				+ Board_Category_name + "]";
	}

}
