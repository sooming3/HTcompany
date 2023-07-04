package org.ht.service;

import java.util.ArrayList;

import org.ht.model.CriteriaVO;
import org.ht.mapper.BoardMapper;
import org.ht.model.BoardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardMapper bm;
	
	public void write(BoardVO board)  {
		
		try {
			bm.write(board);
		} catch (Exception e) {
		
			e.printStackTrace();
		}
		
	}
	
	// BoardService에서 설계되어진 list추상메서드를 구현
	public ArrayList<BoardVO> list(CriteriaVO cri) {
		return bm.list(cri);
	}
}

/*
 * 
	@Override
	public BoardVO detail(BoardVO board) {
		bm.cntup(board);
		return bm.detail(board);
	}

	@Override
	public void modify(BoardVO board) {
		bm.modify(board);
		
	}

	@Override
	public void remove(BoardVO board) {
		bm.remove(board);
		
	}

*/
	

