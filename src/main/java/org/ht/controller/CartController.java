package org.ht.controller;

import org.ht.model.CartVO;
import org.ht.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CartController {

	// 비즈니스 모델을 컨트롤러에 연결하기
	@Autowired
	CartService cs; 
		
	@RequestMapping(value = "/cart", method = RequestMethod.GET)
	public String cartList(Model model, CartVO cart) {
		cs.cartList(cart);
		model.addAttribute("list", cs.cartList(cart));
		System.out.println(cs.cartList(cart));
		return "cartPage"; 
	}
}
