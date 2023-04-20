<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file ="viviana_header.jsp" %>

<title>QUESTION</title>
<script src="resources/js/Board_question.js" type="text/javascript"></script>
<link rel="stylesheet" href="resources/css/Board_question.css">

<body style="overflow-x: hidden">

<div class= "wrap">

 <section class="content">
 
  <h1> Question </h1> 
    <form name="myForm"  autocomplete="off" >
    
       <h3><label for="sele">분류*</label></h3>
       <span class="box"><select id="select_value" required >
       <option value="0" >선택</option>
       <option value="1">제품문의</option>
       <option value="2">배송문의</option>
       <option value="3">교환문의</option>
       <option value="4">반품문의</option>
       <option value="5">기타문의</option>
       </select></span> <div id="seleError" class="error"> </div>
   
       <h3><label for="title">제목*</label></h3>
       <span class="box"><input type ="text" id="title" class="int" onblur="titlechk()" maxlength="25" placeholder="내용을 입력해주세요."></span>
       <div id="titleError" class="error"></div>
         
       <h3><label for="writer">작성자*</label></h3>
       <span class="box"><input type ="text" id="writer" class="int"  onblur="writerchk()" placeholder="내용을 입력해주세요." ></span>
        <div id="writerError" class="error"></div>
       
       <h3><label for="number">연락처*</label></h3>
       <span class="box"><input type ="tel" id="number" class="int"  onblur="numberchk()"placeholder="내용을 입력해주세요." ></span>
       <div id="numberError" class="error"></div>
        
       <h3><label for="text">문의내용</label></h3>
       <span class="text_box"><textarea id="text" placeholder="내용을 입력해주세요."></textarea></span>
       
       <h3><label for="file" >첨부파일</label></h3>
       <div class="file_area">
       <input type ="file" class="int_file" multiple="multiple" accept="image/png,image/jpeg"></div>
       
       <h3><label for="view">공개여부</label></h3>   
        <div class="view_area">
       <input type="radio" id="yes" name="viewsel" checked="checked" ><label for="yes">공개</label>
       <input type="radio" id="no"  name="viewsel" ><label for="no">비공개</label>
       </div>
       
       <h3><label for="viewPw">비밀번호*</label></h3>
       <span class="box"><input type ="text" id="pw" class="int"  onblur="pwchk()" placeholder="내용을 입력해주세요." ></span>
       <div id="pwError" class="error"></div>

       <div class="button_area">
         <input type="button" class="subbutton" value="확인" onclick="LastCheck()" >
       </div>  
   
   </form>
 </section>
</div>

</body>
</html>