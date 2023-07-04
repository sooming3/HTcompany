package org.ht.model;

public class Board_imageVO {
	
	 //게시판 첨부파일 번호
	 private String Board_image_no;
	 //게시판 글 번호 
	 private int Board_no;
	 //게시판 첨부파일 이름
	 private String Board_image_name;
	 //첨부파일 크기
	 private String Board_image_size;
	 //첨부파일 생성 날짜
	 private String Board_image_date;
	 
	public String getBoard_image_no() {
		return Board_image_no;
	}
	public void setBoard_image_no(String board_image_no) {
		Board_image_no = board_image_no;
	}
	public int getBoard_no() {
		return Board_no;
	}
	public void setBoard_no(int board_no) {
		Board_no = board_no;
	}
	public String getBoard_image_name() {
		return Board_image_name;
	}
	public void setBoard_image_name(String board_image_name) {
		Board_image_name = board_image_name;
	}
	public String getBoard_image_size() {
		return Board_image_size;
	}
	public void setBoard_image_size(String board_image_size) {
		Board_image_size = board_image_size;
	}
	public String getBoard_image_date() {
		return Board_image_date;
	}
	public void setBoard_image_date(String board_image_date) {
		Board_image_date = board_image_date;
	}

	@Override
	public String toString() {
		return "Board_imageVO [Board_image_no=" + Board_image_no + ", Board_no=" + Board_no + ", Board_image_name="
				+ Board_image_name + ", Board_image_size=" + Board_image_size + ", Board_image_date=" + Board_image_date
				+ "]";
	}
	 
	 
}
