<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ include file = "viviana_header.jsp" %>
    


  	<section id="login_section">
        <div class="inner_size">
          	<img src="resources/img/ring_3.jpg" id="login_image">
          <div class="form">
           		<!--  <h2>로그인</h2> -->
		          <form name="loginForm">
		             <div class="text">
		                <p id="login_eng">Share your precious memories with VIVIANA</p>
		                <p>당신의 소중한 기억을 비비아나가 함께합니다.</p>
		             </div>
		              <input id="email" class="login_input" type="email" placeholder="e-mail" maxlength="28" name="id" onblur="checkNotEmpty()"  onmousedown="removespan()"/><br />
		              <span id="emailspan"></span><br>
		         
		              <input id="pw"  class="login_input" class="input password" type="password" placeholder="password" maxlength="20"  name="pass" onblur="checkNotEmptyPW()" onmousedown="remove()"/><br />
		             <!--  <div class="eyes"><i class="fa fa-eye fa-lg"></i></div> -->
		              <span id="passwordspan"></span><br>
		           <div id="loginbtn">
		            <input type="button" value="로그인 하기" class="btn"  onclick="login()" /><br />
		            <input type="button" value="새로운 계정 만들기" class="btn" onclick="location.href='http://localhost:8080/join'" />
		           </div>
		          </form>
          </div>
        </div>
      </section>
        <!-- inner_size -->
    

      <footer></footer>
      <!-- footer -->
    
    <!-- wrap -->
  </body>
</html>