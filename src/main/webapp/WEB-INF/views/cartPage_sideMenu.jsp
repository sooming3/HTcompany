<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- 사이드 메뉴 -->

	<div id="sideMenu" onmouseout="view(false)" onmouseover="view(true)">
		<h2><a href="/cart" title="쇼핑백으로 이동" id="shoppingBagLink">쇼핑백 (${count})</a></h2>
		<hr>
		
		<c:set var="totalPrice" value="0" />
		<c:forEach var="list" items="${list}">
			<div class="sideMenuGoods">
		 		<img class="img icon_remove" src="resources/img/icon_remove.png">
				<div class="product_img_div">
					<img class="product_img" src="resources/img/neck1.jpg">
				</div>
				<div class="product_div">
					<h4 class="sideMenu-item-title"><a href="#">${list.c_name}</a></h4>
					<div class="sideMenu-goods-style" style="font-size: 12px;">스타일<span class="color-reference">${list.c_pronum}</span></div>
						<ul class="sideMenu-baglist-item-properties">
							<li>
							<span class="property-name">색상</span>:
							<span class="property-value-style">${list.c_color}</span>
							</li>
							<li>
							<span class="property-name">사이즈</span>:
							<span class="property-value-size">${list.c_size}</span>
							</li>
						</ul>
					<div class="sideMenu-shipping-info">
						<c:if test="${list.c_result == 'y'}">
							<p class="sideMenu-stock"><b>재고 보유</b></p>
						</c:if>
						<c:if test="${list.c_result == 'n'}">
							<p class="sideMenu-stock"><b>품절</b></p>
						</c:if>
					</div>
					
					<c:set var="totalPrice" value="${totalPrice + list.c_price}" />
					<div>
						<span class="baglist-item-price THREE">
							<span>₩ <fmt:formatNumber value="${list.c_price}" pattern="#,###" /></span>
						</span>
					</div>
				</div> 
			</div>
		</c:forEach>
				
		<div id="order-sum">
			<div><hr></div>
			<div>
				<span><b>합계</b></span>
				<span><b>₩ <fmt:formatNumber value="${totalPrice}" pattern="#,###" /></b></span>
			</div>
			<button class="button">구매하기</button>
			<a href="/cart" title="쇼핑백으로 이동" id="shoppingBagLink">쇼핑백 페이지로 이동</a>
		</div>
	</div>
	
	<!-- 선택 삭제 팝업 -->	
	<div id="choiceModal">
		<div align="right"><img class="modal_close iconX" src="resources/img/icons_x.png"></div>
		<p>선택한 상품을 쇼핑백에서 지우시겠습니까?</p>
		<div>
		<button class="button">확인</button>
		<button class="modal_close button">취소</button>
		</div>
	</div>
	
<script>	
	window.addEventListener('DOMContentLoaded', function() {
		var shoppingBagLink = document.getElementById('shoppingBagLink');
		var sideMenuGoods = document.getElementsByClassName('sideMenuGoods');
		var count = sideMenuGoods.length;
		shoppingBagLink.innerText = '쇼핑백 (' + count + ')';
	});	
</script>