package org.ht.service;

import java.util.ArrayList;

import org.ht.model.CriteriaVO;
import org.ht.model.GoodsVO;
import org.ht.model.ImagesVO;

public interface GoodsService {
	
	//product_registration 상품 등록 insert 
	public void product(GoodsVO goods);
	
	public void images(ImagesVO img);
	
	/*public void product(GoodsVO goods, String g_image1, String g_image2, String g_image3);*/
	
	public ArrayList<GoodsVO> list(CriteriaVO cri);
	
	public int total(CriteriaVO cri);
	
	public GoodsVO goods_detail(String g_num);

}
