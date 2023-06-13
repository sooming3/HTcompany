<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form method="post">

		<div>
		<span>${goods_detail.g_num}</span>
		<span>${goods_detail.g_name}</span>
		<span>${goods_detail.g_kind}</span>
		<span>${goods_detail.g_price}</span>
		<span>${goods_detail.g_color}</span>
		<span>${goods_detail.g_size}</span>
		<span>${goods_detail.g_content}</span>
		<span>${goods_detail.g_image}</span>
<%-- 		<span>${goods_detail.g_image1}</span>
		<span>${goods_detail.g_image2}</span>
		<span>${goods_detail.g_image3}</span> --%>
		<span>${goods_detail.g_useyn}</span>
		<span>${goods_detail.g_regdate}</span>
		</div>

	</form>

</body>
</html>