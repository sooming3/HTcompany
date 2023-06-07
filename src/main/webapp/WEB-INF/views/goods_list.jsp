<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<c:forEach items="${list}" var="boardlist">
		<div>이미지자리</div>
		<div>상품명</div>
		<div>상품가격</div>
		<div>상품컬러</div>
	</c:forEach>
	<!-- for문 끝 -->
	
</body>
</html>