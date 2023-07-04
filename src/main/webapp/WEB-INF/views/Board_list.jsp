<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file ="viviana_header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- 
<head>
<meta charset="UTF-8">

<title>LIST</title>

<link rel="stylesheet" href="resources/css/Board_list.css">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
</head>

<body> -->
<div class="boardPage">
<div class = "board_wrap">
	<div class ="board_title">
		<h1>List</h1>
		<p> 문의 사항을 남겨주세요. </p>
	</div>
      
		<div class="search_container">
	   		 <span class="icon"><i class="fa fa-search"></i></span>
        	 <input type="search" name="keyword" value="${paging.cri.keyword}" id="search" placeholder="Search" >
        	 <button type="button" class="search_bt">검색</button>

		</div>

	<div class ="board_list_wrap">
		<div class="board_list">
			<div class="top">
				<div class="num">No.</div>
				
				<div class="sel">
				<select class="sel_select" name="select" >
       				<option value="">카테고리</option>
       				<option value="1">제품문의</option>
     				<option value="2">배송문의</option>
      				<option value="3">교환문의</option>
      				<option value="4">반품문의</option>
       				<option value="5">기타문의</option>
				</select>
		        </div>
		        
				<div class="title">제목/상품</div>
				<div class="writer">작성자</div>
				<div class="date">작성일</div>
				<div class="count">조회</div>
			</div>
			<div>
			<!-- for문 시작 -->
			  <c:forEach items="${list}" var="board_list">
				    <div class="board_item">
				        <div class="num">${board_list.Board_no}</div>
				        <div class="sel">${board_list.Board_Category_no}</div>
				        <div class="title"><a href="/Board_list_view?bno=${board_list.Board_no}">${boardlist.Board_title}</a></div>
				        <div class="writer">${board_list.User_id}</div>
				        <div class="date">${board_list.Board_date}</div>
				        <div class="count">${board_list.Board_count}</div>
				    </div>
			  </c:forEach>
			  <!-- for문 종료 -->
			</div>
					
		<div class="board_page">
			<a href="#" class="bt first"> &lt&lt </a>
			<a href="#" class="bt prev">&lt</a>
			<a href="#" class="num">1</a>
			<a href="#" class="num">2</a>
			<a href="#" class="num">3</a>
			<a href="#" class="num">4</a>
			<a href="#" class="num">5</a>
			<a href="#" class="bt next"> &gt</a>
			<a href="#" class="bt last">&gt&gt</a>
		
		</div>
</div>		
		<div class="bt_wrap">
			<a href="#" class="on" onclick="location.href='http://localhost:8080/question'"> 글 작성 </a>
		</div>
	</div>
</div>
</div>
<%@ include file ="viviana_footer.jsp" %>
<!-- </body> -->
