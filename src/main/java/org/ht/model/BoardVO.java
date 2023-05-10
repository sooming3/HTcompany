package org.ht.model;

public class BoardVO {
  
	//게시판 글 번호 
    private int Board_no;
    //작성자 
    private String user_id;
    //연락처 
    private String User_phone;
    //제목  
    private String Board_title;
    //내용 
    private String Board_content;
    //등록일 
    private String Board_date;
    //수정일 
    private String Board_redate;
    //조회수 
    private int Board_count;
    //첨부파일 
    private String Board_file;
    //분류카테고리 
    private int Board_Category_no;
    //공개여부 (공개 or 비공개)
    private int Board_open;
    //비공개 비밀번호 (비공개 설정 시에만)
    private String Board_pw;
    
	public int getBoard_no() {
		return Board_no;
	}
	public void setBoard_no(int board_no) {
		Board_no = board_no;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_phone() {
		return User_phone;
	}
	public void setUser_phone(String user_phone) {
		User_phone = user_phone;
	}
	public String getBoard_title() {
		return Board_title;
	}
	public void setBoard_title(String board_title) {
		Board_title = board_title;
	}
	public String getBoard_content() {
		return Board_content;
	}
	public void setBoard_content(String board_content) {
		Board_content = board_content;
	}
	public String getBoard_date() {
		return Board_date;
	}
	public void setBoard_date(String board_date) {
		Board_date = board_date;
	}
	public String getBoard_redate() {
		return Board_redate;
	}
	public void setBoard_redate(String board_redate) {
		Board_redate = board_redate;
	}
	public int getBoard_count() {
		return Board_count;
	}
	public void setBoard_count(int board_count) {
		Board_count = board_count;
	}
	public String getBoard_file() {
		return Board_file;
	}
	public void setBoard_file(String board_file) {
		Board_file = board_file;
	}
	public int getBoard_Category_no() {
		return Board_Category_no;
	}
	public void setBoard_Category_no(int board_Category_no) {
		Board_Category_no = board_Category_no;
	}
	public int getBoard_open() {
		return Board_open;
	}
	public void setBoard_open(int board_open) {
		Board_open = board_open;
	}
	public String getBoard_pw() {
		return Board_pw;
	}
	public void setBoard_pw(String board_pw) {
		Board_pw = board_pw;
	}
	
	@Override
	public String toString() {
		return "BoardVO [Board_no=" + Board_no + ", user_id=" + user_id + ", User_phone=" + User_phone
				+ ", Board_title=" + Board_title + ", Board_content=" + Board_content + ", Board_date=" + Board_date
				+ ", Board_redate=" + Board_redate + ", Board_count=" + Board_count + ", Board_file=" + Board_file
				+ ", Board_Category_no=" + Board_Category_no + ", Board_open=" + Board_open + ", Board_pw=" + Board_pw
				+ "]";
	}

	

}
