package org.ht.service;

import org.ht.mapper.GoodsMapper;
import org.ht.mapper.ImagesMapper;
import org.ht.model.GoodsVO;
import org.ht.model.ImagesVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class GoodsServiceImpl implements GoodsService {
	
	@Autowired
	GoodsMapper gm;
	
/*	@Autowired
	ImagesMapper im;*/
	
	
/*	//product_registration 상품 등록 insert 
	public void product(GoodsVO goods, ImagesVO img) {
		gm.product(goods);
		images(img);
	}
	
	private void insertImages(GoodsVO goods) {
		ImagesVO images = new ImagesVO();
		images.setG_num(goods.getG_num());
		images.setG_image1( 이미지1 정보 );
		images.setG_image2( 이미지2 정보 );
		images.setG_image3( 이미지3 정보 );
		
		im.images(img);
	}*/
	
	//product_registration 상품 등록 insert 
/*	public void product(GoodsVO goods) {
		gm.product(goods);
		
	    // images 테이블에 INSERT 작업을 위한 ImagesVO 객체 생성 및 데이터 설정
	    ImagesVO images = new ImagesVO();
	    images.setG_num(goods.getG_num());
	    images.setG_image1(g_image1);
	    images.setG_image2(g_image2);
	    images.setG_image3(g_image3);

	    // images 테이블에 데이터 INSERT
	    gm.images(images);
	}
	
	public void images(ImagesVO img) {
		// images 테이블 INSERT 코드 구현
	}*/
	
    // product_registration 상품 등록 insert
    public void product(GoodsVO goods, String g_image1, String g_image2, String g_image3) {
        gm.product(goods);
        
        // images 테이블에 INSERT 작업을 위한 ImagesVO 객체 생성 및 데이터 설정
        ImagesVO images = new ImagesVO();
        images.setG_num(goods.getG_num());
        images.setG_image1(g_image1);
        images.setG_image2(g_image2);
        images.setG_image3(g_image3);
        
        // images 테이블에 데이터 INSERT
        gm.images(images);
    
    }

}
