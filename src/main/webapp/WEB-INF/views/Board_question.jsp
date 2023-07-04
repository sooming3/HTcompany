<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file ="viviana_header.jsp" %>

<title>QUESTION</title>
<link rel="stylesheet" href="resources/css/Board_question.css">

<body style="overflow-x: hidden"> 

<div class="QuestionPage">


 <section class="Questioncontent">
 
  <h1> Question </h1> 
    <form class="question_form" name="myForm"  autocomplete="off" action="/write" method="POST">
    
       <h3><label class="la" for="sele">분류*</label></h3>
       <span class="q_box"><select class="q_select1" id="select_value" name="Board_Category_no" required >
       <option value="0" >선택</option>
       <option value="1">제품문의</option>
       <option value="2">배송문의</option>
       <option value="3">교환문의</option>
       <option value="4">반품문의</option>
       <option value="5">기타문의</option>
       </select></span> <div id="seleError" class="qerror"> </div>
   
       <h3><label class="la" for="title">제목*</label></h3>
       <span class="q_box"><input type ="text" id="title" name="Board_title" class="q_int" onblur="titlechk()" maxlength="25" placeholder="내용을 입력해주세요."></span>
       <div id="titleError" class="qerror"></div>
         
       <h3><label class="la" for="writer">작성자*</label></h3>
       <span class="q_box"><input type ="text" id="writer" name="User_id" class="q_int"  onblur="writerchk()" placeholder="내용을 입력해주세요." ></span>
        <div id="writerError" class="qerror"></div>
       
       <h3><label class="la" for="number">연락처*</label></h3>
       <span class="q_box"><input type ="tel" id="number" class="q_int" name="User_phone" onblur="numberchk()"placeholder="내용을 입력해주세요." ></span>
       <div id="numberError" class="qerror"></div>
        
       <h3><label class="la" for="text">문의내용</label></h3>
       <span class="qtext_box"><textarea class="question_area"id="text" name="Board_content" placeholder="내용을 입력해주세요."></textarea></span>
       
       <h3><label class="la" for="file" >첨부파일</label></h3>
       <div class="qfile_area">
       <input type ="file" class="qint_file" name="Board_file" multiple="multiple" accept="image/png,image/jpeg"></div>
       
       <h3><label class="la" for="view">공개여부</label></h3>   
        <div class="qview_area">
       <input type="radio" id="yes" value="y" name="Board_open" checked="checked" ><label for="yes">공개</label>
       <input type="radio" id="no"  value="n" name="Board_open" ><label for="no">비공개</label>
       </div>
       
       <h3><label class="la" for="viewPw">비밀번호*</label></h3>
        <span class="q_box"><input type ="text" id="password" class="q_int"  name="Board_pw" onblur="pwchk()" placeholder="비공개 선택 시 입력해주세요." ></span>
        <div id="pwError" class="qerror"></div> 

       <div class="qbutton_area">
         <button type="button" class="subbutton" value="확인" onclick="LastCheck()" > 확인 </button>
       </div>  
   
   </form>
 </section>
</div>
  <script src="resources/js/Board_question.js" type="text/javascript"></script> 
<!-- </body>
</html> -->