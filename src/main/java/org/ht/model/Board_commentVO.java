package org.ht.model;

public class Board_commentVO {
	
	 //게시판 댓글 번호
	 private int Comment_no;
	 //게시판 글 번호 
	 private int Board_no;
	 //작성자(관리자번호) 
	 private int Manager_no;
	 //답변 내용
	 private String Comment_content;
	 //답변 작성일
	 private String Comment_date;
	 //답변 수정일
	 private String Comment_redate;
	 
	public int getComment_no() {
		return Comment_no;
	}
	public void setComment_no(int comment_no) {
		Comment_no = comment_no;
	}
	public int getBoard_no() {
		return Board_no;
	}
	public void setBoard_no(int board_no) {
		Board_no = board_no;
	}
	public int getManager_no() {
		return Manager_no;
	}
	public void setManager_no(int manager_no) {
		Manager_no = manager_no;
	}
	public String getComment_content() {
		return Comment_content;
	}
	public void setComment_content(String comment_content) {
		Comment_content = comment_content;
	}
	public String getComment_date() {
		return Comment_date;
	}
	public void setComment_date(String comment_date) {
		Comment_date = comment_date;
	}
	public String getComment_redate() {
		return Comment_redate;
	}
	public void setComment_redate(String comment_redate) {
		Comment_redate = comment_redate;
	}
	
	@Override
	public String toString() {
		return "Board_commentVO [Comment_no=" + Comment_no + ", Board_no=" + Board_no + ", Manager_no=" + Manager_no
				+ ", Comment_content=" + Comment_content + ", Comment_date=" + Comment_date + ", Comment_redate="
				+ Comment_redate + "]";
	}
	
	
}
