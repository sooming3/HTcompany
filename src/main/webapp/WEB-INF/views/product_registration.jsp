<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="/product" method="POST">
	상품코드
	<input type="text" id="g_num" name="g_num">
	상품명
	<input type="text" id="g_name" name="g_name">
	상품이미지
	<input type="text" id="g_image" name="g_image">
	상품설명
	<input type="text" id="g_content" name="g_content">
	상품종류
	<input type="text" id="g_kind" name="g_kind">
	상품사이즈
	<input type="text" id="g_size" name="g_size">
	상품컬러
	<input type="text" id="g_color" name="g_color">
	상품가격
	<input type="text" id="g_price" name="g_price">
	상품판매여부
	<input type="text" id="g_useyn" name="g_useyn">
	상품등록날짜
	<input type="hidden" id="g_regdate" name="g_regdate">
	
	<button type="submit" class="button">확인</button>	
</form>

</body>
</html>