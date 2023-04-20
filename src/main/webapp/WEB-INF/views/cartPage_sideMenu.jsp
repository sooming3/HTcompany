<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 사이드 메뉴 -->
	<div id="sideMenu" onmouseout="view(false)" onmouseover="view(true)">
		<h2>쇼핑백 (3)</h2>
		<hr>
	<div class="sideMenuGoods">
 		<img class="icon_remove" src="resources/img/icon_remove.png" onclick="choicePopup()">
		<div class="product_img_div">
			<img class="product_img" src="resources/img/neck1.jpg">
		</div>
		<div class="product_div">
			<h4 class="sideMenu-item-title"><a href="#">수민 찰떡 네크리스</a></h4>
			<div class="sideMenu-goods-style" style="font-size: 12px;">스타일<span class="color-reference"># ‎723391 C9D00 9022</span></div>
				<ul class="sideMenu-baglist-item-properties">
					<li>
					<span class="property-name">옵션</span>:
					<span class="property-value-style">화이트 레더</span>
					</li>
					<li>
					<span class="property-name">사이즈</span>:
					<span class="property-value-size">35.5 = 225 KR</span>
					</li>
				</ul>
			<div class="sideMenu-shipping-info">
				<p class="sideMenu-stock"><b>재고 보유</b></p>
			</div>
			<div>
				<span class="baglist-item-price THREE">
				<span>₩ 1,220,000</span>
				</span>
			</div>
		</div> 
	</div>
		<div id="order-sum">
			<div><hr></div>
			<div>
				<span><b>합계</b></span>
				<span><b>₩10,000,000</b></span>
			</div>
			<button class="button">구매하기</button>
		</div>
	</div>
	
	<!-- 선택 삭제 팝업 -->	
	<div id="choicePopup">
		<div align="right"><img onclick="deletePopup()" class="iconX" src="resources/img/icons_x.png"></div>
		<p>선택한 상품을 쇼핑백에서 지우시겠습니까?</p>
		<div>
		<button class="button">확인</button>
		<button onclick="deletePopup()" class="button">취소</button>
		</div>
	</div>