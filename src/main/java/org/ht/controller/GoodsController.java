package org.ht.controller;

import javax.servlet.http.HttpSession;

import org.ht.model.CriteriaVO;
import org.ht.model.GoodsVO;
import org.ht.model.ImagesVO;
import org.ht.model.PageVO;
import org.ht.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class GoodsController {

	@Autowired
	GoodsService gs;
	
	//product_registration GET 
	@RequestMapping(value="/product", method = RequestMethod.GET)
	public String product_registration() {
	return "product_registration";
	}
	
	//product_registration POST -> 상품등록 insert 
/*	@RequestMapping(value = "/product", method = RequestMethod.POST)
	public String productIn(GoodsVO goods, ImagesVO img) {
		System.out.println(goods);
		gs.product(goods);
		gs.images(img);
		return "product_registration";
	}*/
	
	//product_registration POST -> 상품등록 insert 
	@RequestMapping(value = "/product", method = RequestMethod.POST)
	public String productIn(GoodsVO goods, 
			@RequestParam("g_image1") String g_image1,
			@RequestParam("g_image2") String g_image2,
			@RequestParam("g_image3") String g_image3) {
		System.out.println(goods);
		System.out.println(g_image1);
		System.out.println(g_image2);
		System.out.println(g_image3);
		gs.product(goods,g_image1, g_image2, g_image3);
		return "product_registration";
	}
	
	
	// 상품 리스트로 이동하기
	@RequestMapping(value="/goods_list", method = RequestMethod.GET)
	public String list (Model model, CriteriaVO cri) {
		model.addAttribute("list", gs.list(cri));
		int total=gs.total(cri);
		model.addAttribute("paging", new PageVO(cri, total));
		System.out.println("goodslist");
		return "goods_list";
	}
	
	@RequestMapping(value = "/goods_detail", method = RequestMethod.GET)
	public String goods_detail (String g_num, Model model) {
		model.addAttribute("goods_detail", gs.goods_detail(g_num));
		gs.goods_detail(g_num);
		return "goods_detail";
	}
	
	
/*	@RequestMapping(value = "/goodslist", method = RequestMethod.GET)
	// 게시판 목록 리스트
	public String list (Model model) {
		System.out.println(cri);
		model.addAttribute("list", gs.list(cri));
		return "goodslist";
	}*/
	
	
	
}
