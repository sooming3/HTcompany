<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head> 
<body>
<!-- 	<ul>
		<li>
			<div><img src="/resources/img/silverRing.jpg" width="100" height="100">상품1</div>
			<a href="#">장바구니에 담기</a>
		</li> 
		<li>
			<div><img src="/resources/img/silverRing.jpg" width="100" height="100">상품2</div><a>장바구니에 담기</a>
		</li>
		<li>
			<div><img src="/resources/img/silverRing.jpg" width="100" height="100">상품3</div><a>장바구니에 담기</a>
		</li>
		<li>
			<div><img src="/resources/img/silverRing.jpg" width="100" height="100">상품4</div><a>장바구니에 담기</a>
		</li>
		<li>
			<div><img src="/resources/img/silverRing.jpg" width="100" height="100">상품5</div><a>장바구니에 담기</a>
		</li>
		<li>
			<div><img src="/resources/img/silverRing.jpg" width="100" height="100">상품6</div><a>장바구니에 담기</a>
		</li>
	</ul> -->
	
	
	<!-- for문 시작 -->
	<c:forEach items="${list}" var="Goods_List">
		<div>
		<span>${Goods_List.g_image}</span>
		<span>${Goods_List.g_name}</span>
		<span>${Goods_List.g_price}</span>
		<span>${Goods_List.g_color}</span>
		</div>
	</c:forEach>
	<!-- for문 끝 -->
	
	
	
	
</body>
</html>