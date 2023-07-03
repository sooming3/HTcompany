<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "viviana_header.jsp" %>
<body id="admin_body">
<div id="admin_wrapper">
	<div id="adminContents">
	<div id="pageLeft">
		<div><img src="../resources/img/dd.jpg" width="550px" height="900px"></div>
	</div>
	<div id="pageRight">
		<div class="admin"><p>관리자 페이지</p></div>
		<div><button onclick="location.href='http://localhost:8080/product'" >상품등록</button></div>
		<div><button onclick="location.href='http://localhost:8080/answer'" >문의답변</button></div>
	</div>
	</div>
</div>

</body>

<style>
/* #admin_body{background:url("../resources/img/dd.jpg"); height:100%; background-size: cover;} */
#admin_wrapper{width:100%; height:100%; }
#adminContents{position: absolute;top:63%;left:50%;transform: translate(-50%, -50%);}
#pageLeft{}
#pageRight{}
</style>