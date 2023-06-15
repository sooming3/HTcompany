<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="viviana_header.jsp"%>

<div id="cartPage_all">

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
					<span class="property-name">색상</span>:
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
	
	<!-- 메인 이미지  -->
	<div id="gift"><img src="resources/img/main.jpg"></div>
	<h1 id="shoppingBag" align="center">Shopping Bag (3)</h1>
		
	
<div id="cartPage">
<!-- 품목 부분 -->
<div id="all">
	<button onclick="openPopup()" style="float:right;">전체 삭제</button>
	<hr style="width:800px; background:#E6E3DF; height:1px; border:0;">
	
	<!-- 전체삭제 팝업 -->	
	<div id="removePopup">
		<div align="right"><img onclick="removePopup()" class="iconX" src="resources/img/icons_x.png"></div>
		<p>쇼핑백에 담긴 상품을 전부 비우시겠습니까?</p>
		<div>
		<button onclick="allremove()" class="button">확인</button>
		<button onclick="removePopup()" class="button">취소</button>
		</div>
	</div>
	
		<!-- 메인 장바구니 -->
	<c:forEach var="list" items="${list}">
		<div class="goods">
			<img class="icon_remove" onclick="choicePopup()" src="resources/img/icon_remove.png">
			<div class="product_img_div">
				<img class="product_img" src="resources/img/neck1.jpg">
			</div>

			<div class="goods_option">
				<h3 class="item-title">
					<a href="#">${list.c_name}</a>
				</h3>
				<div class="goods-style" style="font-size: 12px;">스타일
					<span class="color-reference">${list.c_pronum}</span>
				</div>
				<ul class="baglist-item-properties">
					<li>
					<span class="property-name">색상</span>:
					<span class="property-value-style">${list.c_color}</span>
					</li>
					<li>
					<span class="property-name">사이즈</span>:
					<span class="property-value-size">${list.c_size}</span>
					</li>
				</ul>
				<div class="shipping-info">
					<c:if test="${list.c_result == 'y'}">
						<p class="stock_status"><b>재고 보유</b></p>
						<div class="subtitle">1~3일 이내 발송 가능한 상품입니다.</div>
					</c:if>
					<c:if test="${list.c_result == 'n'}">
						<p class="stock_status"><b>품절</b></p>
						<div class="subtitle">현재 재고가 없습니다.</div>
					</c:if>
				</div>
				
				<div class="footer-item">
					<div class="baglist-item-actions">
						<div class="edit-action">
							<button onclick="openPopup2()" type="button">옵션 수정</button>
							<button type="button" onclick="choicePopup()">삭제</button>
							<button type="button">♡위시리스트 담기</button>
						</div>
					</div>
				</div> 
			</div>
			<!-- 수량, 가격 부분 -->
			<div class="price-label">
				<span class="baglist-item-price THREE">
					<span>₩ <span class="onlyPrice">${list.c_price}</span></span>
				</span>
			</div>
			<div class="quantity">
				<div class="custom-select-parent " data-item-maxquantity="1">
				<label class="quantity-label" for="qty-723391C9D009022">수량:</label>
					<select class="numOption">
						<option selected value="${list.c_quantity}">${list.c_quantity}</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
					</select>
				</div>
			</div>
		</div>
	</c:forEach>
		
<!-- 선택 삭제 팝업 -->	
	<div id="choicePopup">
		<div align="right"><img onclick="deletePopup()" class="iconX" src="resources/img/icons_x.png"></div>
		<p>선택한 상품을 쇼핑백에서 지우시겠습니까?</p>
		<div>
		<button class="button">확인</button>
		<button onclick="deletePopup()" class="button">취소</button>
		</div>
	</div>
<!-- 옵션 수정 팝업창 -->
	<div id="updatePopup">
		<div align="right"><img onclick="removePopup2()" class="iconX" src="resources/img/icons_x.png"></div>
		<div align="center" style="margin-bottom: 30px;">
			<h2>옵션 수정</h2>
		</div>
		<div id="updatePopup-left">
			<img src="resources/img/neck1.jpg" width="260px" height="260px">
			<!-- <div>수민 찰떡 네크리스</div> -->
		</div>
		<div id="updatePopup-right">
			<fieldset>
				<label class="quantity-label" for="qty-723391C9D009022">색상</label>
				<div>
				<select name="" class="selectStyle" data-index="0" aria-label="Quantity" data-custom-select-prefix="수량" tabindex="-1" aria-hidden="true">
					<option selected="selected" value="1">골드</option>
					<option value="2">로즈골드</option>
					<option value="3">실버</option>
				</select>
				</div>
			</fieldset>
			<fieldset>	
				<label class="quantity-label" for="qty-723391C9D009022">사이즈</label>
				<div>
				<select name="" class="selectStyle" data-index="0" aria-label="Quantity" data-custom-select-prefix="수량" tabindex="-1" aria-hidden="true">
					<option selected="selected" value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="3">4</option>
				</select>
				</div>
			</fieldset>	
		</div>
		<div align="center" style="margin-top: 40px;">		
			<button class="button" style="display:inline-block; width:250px;">변경 사항 저장</button><br>
			<button class="button" style="display:inline-block; width:250px;" onclick="removePopup2()">취소</button>
		</div>
	</div>
	
</div>
<!-- 품목 부분 종료-->

<!-- 주문서 부분 -->
	<div id="order">

 		<div>주문 요약</div>
 		<hr>
		<ul class="order-details-totals">
			<li class="shopping-bag-subtotal">
                <span class="order_left">상품 수</span>
                <span class="order_right" dir="ltr">3 개</span>
            </li>
			<li>
				<span class="order_left">배송비</span>
				<span class="order_right">무료</span>
			</li>
			<li class="shopping-bag-vip-discount">
			</li>
			<li class="shopping-bag-estimated-total">
				<span class="order_left">합계</span>
				<span class="order_right" dir="ltr">₩ <b>3,440,000</b></span>
 			</li>
		</ul>
		<hr>
		<p>구매하신 상품은 전국 비비아나 오프라인 직영점에서 교환이 가능합니다. 다만 환불은 구매처 또는 지정된 매장에서 반품하실 수 있습니다.<br>
		자세한 내용은 FAQ 에서 확인 가능하며, 매장 반품 서비스를 희망하시는 경우 클라이언트 서비스센터 02.1234.5678로 문의해 주시기 바랍니다.
		</p>
		<button class="button">구매하기</button>
		
	</div>
	
<!-- 주문서 부분 종료-->
</div>
<!-- 품목+주문서 종료 -->

<!-- 장바구니가 비었을 때 페이지 -->
<div id="emptyPage" align="center">
	<h2 style="margin: 40px 0px 30px 0px;">쇼핑백이 비어있습니다.</h2>
	<p>내 계정에 로그인하면 이전에 고객님이 다른 기기에서 추가했던 상품을 볼 수 있습니다.</p>
	<button onclick="location.href='/login';" class="button" style="width: 200px; margin: 20px 0px 50px 0px;">로그인</button>
	<p>비비아나의 다채로운 매력에 빠져보세요!</p>
	<img id="img1" src="resources/img/neck1.jpg"><img id="img2" src="resources/img/ear.jpg"><img id="img3" src="resources/img/ring.jpg">

</div>

</div>
<!-- 전체 페이지 종료 -->

<%@ include file="viviana_footer.jsp"%>