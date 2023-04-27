<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file ="viviana_header.jsp" %>
<!-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ANSWER</title>
<link rel="stylesheet" href="resources/css/Board_answer.css">

</head>
<body>
 header

 content -->
<div class="AnswerPage">
<div class= "Answerwrap">

 <section class="Answercontent">
 
  <h1> Answer </h1> 
    <form class="answer_form">
       <h3><label for="title">제목</label></h3>
       <span class="answer_box"><input type ="text" class="answer_int" maxlength="25" placeholder="내용을 입력해주세요."></span>
       <h3><label for="writer">작성자</label></h3>
        <span class="answer_box"><input type ="text" class="answer_int" value="관리자" readonly="readonly"></span>
       <h3><label for="answer">답변</label></h3>
        <span class="answer_box2"><textarea class="answer_area" placeholder="내용을 입력해주세요."></textarea></span>
   
    <div class="Answerbutton_area">
       <button class="answer_button" type="submit">
	      <span>확인</span>
	   </button>
    </div>  
   </form>
 </section>
</div>
</div>
<!-- footer -->
<!--  <footer id="footer"></footer> 
</body>
</html> -->