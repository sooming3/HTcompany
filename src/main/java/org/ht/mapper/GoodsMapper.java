package org.ht.mapper;

import org.ht.model.GoodsVO;
import org.ht.model.ImagesVO;

public interface GoodsMapper {
	
	//product_registration 상품 등록 insert 
	public void product(GoodsVO goods);
	
	public void images(ImagesVO img);

}
