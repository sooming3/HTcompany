package org.ht.controller;

import org.ht.model.GoodsVO;
import org.ht.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class GoodsController {

	@Autowired
	GoodsService gs;
	
	//product_registration GET
	@RequestMapping(value = "/product", method = RequestMethod.GET)
	public String Goods() {
		return "product_registration";
	}
	
	//product_registration POST -> 상품등록 insert
	@RequestMapping(value = "/product", method = RequestMethod.POST)
	public String product(GoodsVO goods) {
		System.out.println(goods);
		gs.product(goods);
		return "product_registration";
	}
	
}