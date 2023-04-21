<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file ="viviana_header.jsp" %>

<!-- 
<head>
<meta charset="UTF-8">

<title>LIST</title>

<link rel="stylesheet" href="resources/css/Board_list.css">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
</head>

<body> -->

<div class = "board_wrap">
	<div class ="board_title">
		<h1>List</h1>
		<p> 문의 사항을 남겨주세요. </p>
	</div>
      
		<div class="search_container">
	   		 <span class="icon"><i class="fa fa-search"></i></span>
        	 <input type="search" id="search" onkeyup="filter()" placeholder="Search" >
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
				<div class="num">10</div>
				<div class="sel">제품문의</div>
				<div class="title"><a href="Board_list_view.jsp">title</a></div>
				<div class="writer">박선영</div>
				<div class="date">2023.03.10</div>
				<div class="count">2</div>
			</div>
			<div>
				<div class="num">9</div>
				<div class="sel">제품문의</div>
				<div class="title"><a href="Board_list_view.jsp">title</a></div>
				<div class="writer">박선영</div>
				<div class="date">2023.03.10</div>
				<div class="count">2</div>
			</div>
			<div>
				<div class="num">8</div>
				<div class="sel">제품문의</div>
				<div class="title"><a href="Board_list_view.jsp">title</a></div>
				<div class="writer">박선영</div>
				<div class="date">2023.03.10</div>
				<div class="count">2</div>
			</div>
			<div>
				<div class="num">7</div>
				<div class="sel">제품문의</div>
				<div class="title"><a href="Board_list_view.jsp">title</a></div>
				<div class="writer">박선영</div>
				<div class="date">2023.03.10</div>
				<div class="count">2</div>
			</div>
			<div>
				<div class="num">6</div>
				<div class="sel">제품문의</div>
				<div class="title"><a href="Board_list_view.jsp">title</a></div>
				<div class="writer">박선영</div>
				<div class="date">2023.03.10</div>
				<div class="count">2</div>
			</div>
			<div>
				<div class="num">5</div>
				<div class="sel">제품문의</div>
				<div class="title"><a href="Board_list_view.jsp">title</a></div>
				<div class="writer">박선영</div>
				<div class="date">2023.03.10</div>
				<div class="count">2</div>
			</div>
			<div>
				<div class="num">4</div>
				<div class="sel">제품문의</div>
				<div class="title"><a href="Board_list_view.jsp">title</a></div>
				<div class="writer">박선영</div>
				<div class="date">2023.03.10</div>
				<div class="count">2</div>
			</div>
			<div>
				<div class="num">3</div>
				<div class="sel">제품문의</div>
				<div class="title"><a href="Board_list_view.jsp">title</a></div>
				<div class="writer">박선영</div>
				<div class="date">2023.03.10</div>
				<div class="count">2</div>
			</div>
			<div>
				<div class="num">2</div>
				<div class="sel">제품문의</div>
				<div class="title"><a href="Board_list_view.jsp">title</a></div>
				<div class="writer">박선영</div>
				<div class="date">2023.03.10</div>
				<div class="count">2</div>
			</div>
			<div>
				<div class="num">1</div>
				<div class="sel">제품문의</div>
				<div class="title"><a href="Board_list_view.jsp">title</a></div>
				<div class="writer">박선영</div>
				<div class="date">2023.03.10</div>
				<div class="count">2</div>
			</div>

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
		<div class="bt_wrap">
			<a href="Board_question.jsp" class="on"> 글 작성 </a>
		</div>
	</div>
</div>

<!-- </body> -->
