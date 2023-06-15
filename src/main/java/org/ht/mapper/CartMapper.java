package org.ht.mapper;

import java.util.ArrayList;

import org.ht.model.CartVO;

public interface CartMapper {

	public ArrayList<CartVO> cartList(CartVO cart);
}
