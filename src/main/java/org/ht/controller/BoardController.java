package org.ht.controller;


  
import org.ht.model.BoardVO;
import org.ht.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller
public class BoardController {
	
	@Autowired
	BoardService bs;
	
/*	// 게시판 글쓰기 페이지 (화면)
		@RequestMapping(value = "/question", method = RequestMethod.GET)
		public String question() throws Exception{
			return "/question";
		}*/
		
		// 게시판 글쓰기 페이지 (insert)
		@RequestMapping(value = "/write", method = RequestMethod.POST)
		public String write(BoardVO board) {
			/*BoardService.write(board);*/
			bs.write(board);
			return "redirect:/Board_list";
		}
		
	
}
