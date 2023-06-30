<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "viviana_header.jsp" %>
<body>
<div id="admin_wrapper">
	<div id="adminContents">
		<div class="admin"><p>관리자 페이지</p></div>
		<div><button onclick="location.href='http://localhost:8080/product_r'" >상품등록</button></div>
	</div>
</div>

</body>

<style>
#admin_wrapper{width:500px; height:500px;  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);}
#adminContents{}
</style>