package org.ht.service;

import java.util.ArrayList;

import org.ht.mapper.CartMapper;
import org.ht.model.CartVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CartServiceImpl implements CartService{

	@Autowired
	CartMapper cm;
	
	public ArrayList<CartVO> cartList(CartVO cart){
		return cm.cartList(cart);
	}
}
