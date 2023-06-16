package org.ht.service;

import java.util.ArrayList;

import org.ht.model.CartVO;

public interface CartService {  
	
	public ArrayList<CartVO> cartList(CartVO cart);
}
