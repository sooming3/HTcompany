<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file ="viviana_header.jsp" %>
<!-- 
<title>QUESTION</title>
<script src="resources/js/Board_question.js" type="text/javascript"></script>
<link rel="stylesheet" href="resources/css/Board_question.css">

<body style="overflow-x: hidden"> -->

<div class="QuestionPage">


 <section class="Questioncontent">
 
  <h1> Question </h1> 
    <form class="question_form" name="myForm"  autocomplete="off" >
    
       <h3><label class="la" for="sele">분류*</label></h3>
       <span class="q_box"><select class="q_select1" id="select_value" required >
       <option value="0" >선택</option>
       <option value="1">제품문의</option>
       <option value="2">배송문의</option>
       <option value="3">교환문의</option>
       <option value="4">반품문의</option>
       <option value="5">기타문의</option>
       </select></span> <div id="seleError" class="qerror"> </div>
   
       <h3><label class="la" for="title">제목*</label></h3>
       <span class="q_box"><input type ="text" id="title" class="q_int" onblur="titlechk()" maxlength="25" placeholder="내용을 입력해주세요."></span>
       <div id="titleError" class="qerror"></div>
         
       <h3><label class="la" for="writer">작성자*</label></h3>
       <span class="q_box"><input type ="text" id="writer" class="q_int"  onblur="writerchk()" placeholder="내용을 입력해주세요." ></span>
        <div id="writerError" class="qerror"></div>
       
       <h3><label class="la" for="number">연락처*</label></h3>
       <span class="q_box"><input type ="tel" id="number" class="q_int"  onblur="numberchk()"placeholder="내용을 입력해주세요." ></span>
       <div id="numberError" class="qerror"></div>
        
       <h3><label class="la" for="text">문의내용</label></h3>
       <span class="qtext_box"><textarea class="question_area"id="text" placeholder="내용을 입력해주세요."></textarea></span>
       
       <h3><label class="la" for="file" >첨부파일</label></h3>
       <div class="qfile_area">
       <input type ="file" class="qint_file" multiple="multiple" accept="image/png,image/jpeg"></div>
       
       <h3><label class="la" for="view">공개여부</label></h3>   
        <div class="qview_area">
       <input type="radio" id="yes" name="viewsel" checked="checked" ><label for="yes">공개</label>
       <input type="radio" id="no"  name="viewsel" ><label for="no">비공개</label>
       </div>
       
       <h3><label class="la" for="viewPw">비밀번호*</label></h3>
       <span class="q_box"><input type ="text" id="pw" class="q_int"  onblur="pwchk()" placeholder="내용을 입력해주세요." ></span>
       <div id="pwError" class="qerror"></div>

       <div class="qbutton_area">
         <input type="button" class="subbutton" value="확인" onclick="LastCheck()" >
       </div>  
   
   </form>
 </section>
</div>

<!-- </body>
</html> -->