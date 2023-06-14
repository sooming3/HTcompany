<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file = "viviana_header.jsp" %>
<body>
<div id="wrap1">
<div id="join_main">
<div class="join_wrap">
<div class="join_form">
          <h2 id="join_h2">회원 가입해주시기 바랍니다.</h2>
          <p class="t1">
            Viviana 웹사이트에 가입하시면 비비아나의 새로운 컬렉션을 만나볼 수 있으며,<br />
        	 비비아나 뉴스레터와 같은 다양한 정보를 받아보실 수 있습니다.</p>
        	 
 <form name="formTotal" id="joinForm" action="/memberin" method="post" onsubmit="return form_submit()">  <!-- reset -->     	
 											<!-- onsubmit 속성을 추가하여 js 함수를 호출하고, 함수 내에서 필요한 유효성 검사를 수행하기  --> 
 											
<div class="login_info_inner_size"><h3 class="join_h3">로그인정보</h3>
       <div class="form-group required">
              <label class="form-control-label">이메일 주소 *<br />
              <input type="email" class="form-control" id="registration-form-email" name="User_id" onblur="emailCheck()"/><br>
              <span class="hiddenText" id="spanEmail"></span>
              </label>
              <button type="button" class="join_checkbtn" id="dchk" onclick="checkDuplicateId()">중복확인</button>
              <button type="button" class="join_checkbtn" id="" onclick="">이메일 인증</button>
       </div>
       <div class="form-group required" class="showPW">
              <label class="form-control-label">비밀번호*<br />
                <input type="password" name="User_password" class="form-control" id="registration-form-password" onblur="passCheck()" onblur="passValidCheck()" /><br>
                <!-- 아이콘 -->
                <a><span class="material-symbols-outlined" id="login_password">key</span></a>
                
                
                  <span class="hiddenText" id="passspan"></span>
              </label>
       </div>
       <div class="form-group required">
              <label class="form-control-label">비밀번호 확인*<br />
                <input type="password" class="form-control" id="registration-form-password-confirm" onblur="passDCheck()"/><br>
              	  <span class="hiddenText"  id="repasssp"></span>
              </label>
       </div>
</div><!-- login_info_inner_size -->


<div class="personal_info_inner_size"><h3 class="join_h3">개인정보</h3>
        <div class="form-group required">
              <label class="form-control-label">이름 *<br />
                <input type="text" name="User_name" maxlength="7" class="form-control" id="registration-form-fname" onblur="fnameCheck()"/><br>
                  <span class="hiddenText"  id="spanfirstname"></span>
              </label>
        </div>
        <div class="form-group required">
              <label class="form-control-label">연락처 *<br />
	                <input type="text" name="User_phone" class="form-control" maxlength="11" placeholder="'-'제외하고 입력해 주십시오." id="phone" onblur="phoneCheck()"/><br>
	                  <span class="hiddenText"  id="phonespan"></span>
              </label>
         </div>

         <div>
           <label class="form-group required">성별<br />
             <input type="radio" value="female" name="User_gender" id="female" class="gender">여성<br>
             <input type="radio" value="male" name="User_gender" id="male" class="gender">남성<br>
             <span class="hiddenText"  id="spanGender"></span><br>
           </label>
         </div>

         <div>
           <label>생일(선택 사항)</label><br />
           <input type="text" id="datepicker">
         <!--  년도는 생략 <select>
           	<option>선택</option><option></option>
           </select> -->
           <select id="join_select" name="User_birth">
             <option>선택</option><option>1월</option><option>2월</option><option>3월</option><option>4월</option>
             <option>5월</option><option>6월</option><option>7월</option><option>8월</option><option>9월</option><option>10월</option>
             <option>11월</option><option>12월</option>
           </select>
           <select name="User_birth">
             <option>선택</option><option>1일</option><option>2일</option><option>3일</option><option>4일</option><option>5일</option><option>6일</option><option>7일</option>
             <option>8일</option><option>9일</option><option>10일</option><option>11일</option><option>12일</option><option>13일</option><option>14일</option><option>15일</option>
             <option>16일</option><option>17일</option><option>18일</option><option>19일</option><option>20일</option><option>21일</option><option>22일</option><option>23일</option>
             <option>24일</option><option>25일</option><option>26일</option><option>27일</option><option>28일</option><option>29일</option><option>30일</option><option>31일</option>
           </select>
       </div>

   
    <div class="category">
      		<div><p>하나 이상의 관심 카테고리를 선택해주시기 바랍니다.</p></div>
   <!-- https://eugene-kim.tistory.com/74 체크박스 value값 DB저장 -->
	        <div>
	          <input type="checkbox" class="checkbox" name="User_interest" id="checkbox1" value="ring"/>
	          <label for="preferences_ring" class="checkbox-label">반지</label>
	        </div>
	        <div>
	          <input type="checkbox" class="checkbox" name="User_interest" id="checkbox2" value="necklace"/>
	          <label for="preferences_necklace" class="checkbox-label">목걸이</label>
	        </div>
	        <div>
	          <input type="checkbox" class="checkbox" name="User_interest" id="checkbox3" value="earring"/>
	          <label for="preferences_earring" class="checkbox-label" >귀걸이</label>
	        </div>
	        <div>
	          <input type="checkbox" class="checkbox" name="User_interest" id="checkbox4" value="bracelet"/>
	          <label for="preferences_bracelet" class="checkbox-label">팔찌</label>
	        </div>
	        <div>
	          <input type="checkbox" class="checkbox" name="User_interest" id="checkbox5" value="anklet"/>
	          <label for="preferences_anklet" class="checkbox-label">발찌</label>
	        </div>

	        <div>
	          <input type="checkbox" class="checkbox" name="User_interest" id="cboxAll" onclick="checkAll()"/>
	          <label for="allPreferences" class="checkbox-label" >모두</label >
	        </div>
	        <button type="button" id="category_check">카테고리 확인</button>
    </div> <!-- category -->
</div><!-- personal_info_inner_size -->

<div class="requirement_info_inner_size"><h3 class="join_h3">청구 정보</h3>
            <div class="form-group required">
             <!--  <label class="form-control-label"> 주소 *<br />
                <input type="text" class="form-control" name="User_addr1" id="addr" placeholder="도, 시, 구, 대로명 작성" maxlength="35" onblur="addrCheck()" />
              	<span id="addrSpan" class="hiddenText" ></span><br>
              </label>
            </div>
            <div class="form-group required">
              <label class="form-control-label"> 상세 주소 *<br />
                <input type="text" class="form-control" name="User_addr2" id="detailAddr" placeholder="건물이름, 동, 호수 등 상세 주소 작성"  maxlength="50"  onblur="detailAddrCheck()" />
             	<span id="detailAddrSpan" class="hiddenText" ></span><br>
              </label>
            </div>
            <div class="form-group required">
              <label class="form-control-label">우편번호<br />
                <input type="text" name="User_addr3" class="form-control" id="postNum" onblur=""/>
                <span id="" class="hiddenText" ></span><br>
              </label> -->
            <input type="text" id="sample6_postcode" name="postnum" placeholder="우편번호"><!-- 우편번호 name 속성 지정하고, db에 우편번호 지정할 열 생성하기 , loginVO에도 추가 etc -->
            <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
			<input type="text" id="sample6_address" name="User_addr1" placeholder="주소"><br>
			<input type="text" id="sample6_detailAddress" name="User_addr2" placeholder="상세주소">
			<input type="text" id="sample6_extraAddress" name="User_addr3" placeholder="참고항목">
              <!-- <button type="button" class="join_checkbtn" onclick="execDaumPostcode()" >검색</button> -->
            </div>
</div><!-- requirement_info_inner_size -->

				 <div class="check">
				            <input type="checkbox" class="checkbox" id="required1" onmouseover="checkboxCheck1();" onclick="checkboxComplete1();"/><span class="checkment"> &nbsp;(필수) 글로벌 서비스를 제공받기 위하여 비비아나 본사 및 해외계열사에 대한 개인정보 국외 제3자 제공에 동의합니다.<br />
				              <a href="#;" class="detail">상세보기</a><br/></span>
				              <span  class="hiddenText" id="spanRequired1"></span><br>
				            <input type="checkbox" class="checkbox" id="required2" onmouseover="checkboxCheck2();" onclick="checkboxComplete2();" /><span class="checkment"> &nbsp;(필수) 개인정보 수집 및 이용에 동의합니다.<br />
				              <a href="#;" class="detail">상세보기</a><br/></span>
				              <span class="hiddenText" id="spanRequired2"></span><br>
				            <input type="checkbox" class="checkbox" name="User_marketing_agree" /><span class="checkment"> &nbsp;(선택) 마케팅 정보 수신에 동의 시, 신제품과 이벤트 등에 대한 다양한 비비아나의 최신 정보를 제공받으실 수 있습니다. 마케팅 정보 수신 등을 위한 개인 정보의 수집 및 이용에 동의합니다.<br />
				              <a href="#;" class="detail">상세보기</a><br/></span>
				
					<div class="cell">
					<input type="checkbox" class="checkbox" id="agree" onmouseover="agreeCheck();" onclick="agreeCheckComplete();"/>
					              <span class="checkment"> 본인은 만 14세 이상이며, 웹사이트 <a href="https://www.bulgari.com/ko-kr/terms-of-use/terms-of-use--page__terms.html" target="_blank">이용약관</a>
					               및 <a href="https://www.bulgari.com/ko-kr/terms-and-conditions/terms-and-conditions--page__terms.html" target="_blank">판매약관을</a> 읽고 동의하였음을 확인합니다.</span>
						<span class="hiddenText"  id="spanAgree"></span><br>
					</div><!-- cell -->

	           		 <p class="t3">*필수 입력 항목</p>
			    
         		 </div><!-- check -->
         		         <div class="btnWrap">
			              <button onclick="location.href='http://localhost:8080/join'" class="join_submitBtn">취소</button>
			              <input type="submit"  value="계정 만들기" id="join_form_submit" class="join_submitBtn" /> <!--onclick="form_submit()"  -->
			              <!-- 
		button과 달리 submit은 기본적으로 클릭시 form에 적혀있는 action 파일로 이동하는데
		onClick 속성으로 아래와 같이 함수를 주면 action 으로 이동하기 전에 유효성 검사를 진행할 수 있다. 
		 -->
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
    
  </body>
</html>