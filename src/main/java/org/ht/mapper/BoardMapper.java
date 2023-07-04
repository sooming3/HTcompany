package org.ht.mapper;

import java.util.ArrayList;

import org.ht.model.CriteriaVO;
import org.ht.model.BoardVO;

public interface BoardMapper {
	
	// 글쓰기
		public void write(BoardVO board) throws Exception;		
    // 게시글 목록 리스트
	   public ArrayList<BoardVO> list(CriteriaVO cri );		
	// 상세내용
		public BoardVO detail(BoardVO board);		
	// 조회수
		public void count(BoardVO board);
	// 수정
		public void modify (BoardVO board);
	// 삭제
		public void remove (BoardVO board);		
	// 테이블 전체건수
		public int total(CriteriaVO cri);	
}
