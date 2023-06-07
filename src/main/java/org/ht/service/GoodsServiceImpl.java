package org.ht.service;

import org.ht.mapper.GoodsMapper;
import org.ht.model.GoodsVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class GoodsServiceImpl implements GoodsService {
	
	@Autowired
	GoodsMapper gm;
	
	//product_registration 상품 등록 insert 
	public void product(GoodsVO goods) {
		gm.product(goods);
	}

}
