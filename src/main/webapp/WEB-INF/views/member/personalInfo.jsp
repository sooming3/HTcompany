<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file = "../viviana_header.jsp" %>
<body>
<div id="wrap1">
<div id="join_main">
<div class="join_wrap">
<div class="join_form">
          <h2 id="join_h2" class="personalInfo_title" >개인 정보 수정</h2>
                	 
 <form name="formTotal" id=""  method="post" onsubmit="return form_submit()">  <!-- reset -->   <!-- onsubmit 속성을 추가하여 js 함수를 호출하고, 함수 내에서 필요한 유효성 검사를 수행하기  --> 
 											
<div class="login_info_inner_size"><h3 class="join_h3">로그인정보</h3>
       <div class="form-group required">
              <label class="form-control-label" id="emailLabel">이메일 주소 *<br />
              <input type="text" readonly class="form-control" id="registration-form-email" name="id" value="${psInfo.id}"><br>
              <!-- <span class="hiddenText" id="spanEmail"></span> -->
              </label>
             
       </div>
       <div class="form-group required" class="showPW">
              <label class="form-control-label">비밀번호*<br />
                <input type="password" name="password" class="form-control" id="registration-form-password" onblur="passCheck()" onblur="passValidCheck()" value="${psInfo.password}"/><br>
                <!-- 아이콘 -->
                <span class="material-symbols-outlined" id="login_password" onclick="passwordVisibility()">key</span>
                
                
                  <span class="hiddenText passspan" id="passspan" ></span>
              </label>
       </div>
       <div class="form-group required">
              <label class="form-control-label">비밀번호 확인*<br />
                <input type="password" class="form-control" id="registration-form-password-confirm" onblur="passDCheck()" value="${psInfo.password}"/><br>
              	  <span class="hiddenText"  id="repasssp"></span>
              </label>
       </div>
</div><!-- login_info_inner_size -->


<div class="personal_info_inner_size"><h3 class="join_h3">개인정보</h3>
        <div class="form-group required">
              <label class="form-control-label">이름 *<br />
                <input type="text" name="name" maxlength="7" class="form-control" id="registration-form-fname" onblur="fnameCheck()" value="${psInfo.name}"/><br>
                  <span class="hiddenText"  id="spanfirstname"></span>
              </label>
        </div>
        <div class="form-group required">
              <label class="form-control-label">연락처 *<br />
	                <input type="text" name="phone" class="form-control" maxlength="11" placeholder="'-'제외하고 입력해 주십시오." id="phone" onblur="phoneCheck()" value="${psInfo.phone}"/><br>
	                  <span class="hiddenText"  id="phonespan"></span>
              </label>
         </div>

         <div id="birthDiv">
           <label class="form-control-label">생일</label><br />
          <!--  <input type="text" id="datepicker"> -->
           <select class="birth_select" name="birthMonth">
             <option>${psInfo.birthMonth}</option><option>1월</option><option>2월</option><option>3월</option><option>4월</option>
             <option>5월</option><option>6월</option><option>7월</option><option>8월</option><option>9월</option><option>10월</option>
             <option>11월</option><option>12월</option>
           </select>
           <select class="birth_select" name="birthDay">
             <option>${psInfo.birthDay}</option><option>1일</option><option>2일</option><option>3일</option><option>4일</option><option>5일</option><option>6일</option><option>7일</option>
             <option>8일</option><option>9일</option><option>10일</option><option>11일</option><option>12일</option><option>13일</option><option>14일</option><option>15일</option>
             <option>16일</option><option>17일</option><option>18일</option><option>19일</option><option>20일</option><option>21일</option><option>22일</option><option>23일</option>
             <option>24일</option><option>25일</option><option>26일</option><option>27일</option><option>28일</option><option>29일</option><option>30일</option><option>31일</option>
           </select>
       </div>


<div class="requirement_info_inner_size personalInfo_rearr"><h3 class="join_h3">청구 정보</h3>
            <div class="form-group required">
            <input type="text" id="sample6_postcode" class="requireInfo addressInput" name="postnum" placeholder="우편번호" value="${psInfo.postnum}">
            <input type="button" id="searchPostnum_btn" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
			<input type="text" id="sample6_address" class="requireInfo addressInput" name="addr1" placeholder="주소" value="${psInfo.addr1}"><br>
			<input type="text" id="sample6_detailAddress" class="requireInfo addressInput" name="addr2" placeholder="상세주소" value="${psInfo.addr2}">
			<input type="text" id="sample6_extraAddress" class="requireInfo addressInput" name="addr3" placeholder="참고항목" value="${psInfo.addr3}">
              <!-- <button type="button" class="join_checkbtn" onclick="execDaumPostcode()" >검색</button> -->
            </div>
</div><!-- requirement_info_inner_size -->

				 <div class=""><p class="t3">*필수 입력 항목</p></div><!-- check -->
         		         <div class="btnWrap" id="personalInfo_btn_rearr">
			              <!-- <button onclick="location.href='http://localhost:8080/join'" class="join_submitBtn">취소</button> -->
			              <input type="submit"  value="수정 완료하기" onclick="modifyComplete()" id="join_form_submit" class="join_submitBtn" formaction="modify"/> <!--onclick="form_submit()"  -->
			              <input type="submit"  value="탈퇴하기" onclick="withdraw()" id="" class="join_submitBtn" formaction="remove">

			            </div>
			            </form><!-- reset button -->
			            

         		 
</div><!-- join_form -->
</div>
</div>
</div><!-- wrap1 -->
    <!-- main -->

    <footer></footer>
    <!--footer -->
    
    <script defer src="../js/joinPage.js"></script>
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <!-- 폼에게 스크릡트 부분이 어디에 있는지 알려주기 -->
    <script>
    function modifyComplete(){ alert("수정 완료되었습니다.");}
    function withdraw(){confirm('정말 탈퇴하시겠습니까?'); alert("탈퇴 완료되었습니다.");}
    </script>
    
  </body>
  
  <style>
 
  #emailLabel{font-size:17px;}
  #registration-form-email{margin:7px 0 32px -20px; padding-left:8px; font-size:15px;}
  .hiddenText{margin-left:-20px; visibility:hidden;}
  .form-control{padding-left: 8px;font-size:15px;}
 .form-group .form-control-label{margin-left:-20px;}
 .passspan{margin:0 0 16px -20px;}
 .personalInfo_title{margin:-20px 0 30px 0;}
 #birthDiv{margin-left:-20px;}
 .personal_info_inner_size .birth_select{height:30px; margin: 8px 0 60px 0;}
 .personalInfo_rearr{padding:0;}
 .personalInfo_rearr .required .addressInput{width:342px; height:29px; margin:10px 8px 16px -21px;font-size:15px;padding-left:8px;}
 #personalInfo_btn_rearr{margin-left:-84px; /* color: gray; line-height:1px; font-size: 15px; */}
 #searchPostnum_btn{margin:-4px 0 4px -21px; padding:2px;}
 
  </style>

</html>