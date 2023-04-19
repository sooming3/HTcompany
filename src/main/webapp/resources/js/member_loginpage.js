
$(function(){
  // 눈표시 클릭 시 패스워드 보이기
  $('.eyes').on('click',function(){
    $('.input.password').toggleClass('active');

    if( $('.input.password').hasClass('active') == true ){
    	$(this).find('.fa-eye').attr('class',"fa fa-eye-slash fa-lg").parents('.input').find('#pw').attr('type',"text");
    				// i 클래스                // 텍스트 보이기 i 클래스
    }
    else{
    	$(this).find('.fa-eye-slash').attr('class',"fa fa-eye fa-lg").parents('.input').find('#pw').attr('type','password');
    }
  });
});



//--------------------------------------------------------------------------

function checkNotEmpty() {	// 아이디 공백 시 스팬문구 띄우기
  var idField = document.getElementById("email");
  if (idField.value.length == 0) {
    document.getElementById("emailspan").innerHTML = "아이디를 입력해주세요.";
    document.getElementById("emailspan").style.color = "red";
  }
}

function checkNotEmptyPW() { // 비밀번호 공백 시 스팬문구기
	  var pwField = document.getElementById("pw");
	  if (pwField.value.length == 0) {
	    document.getElementById("passwordspan").innerHTML ="패스워드를 입력해주세요.";
	    document.getElementById("passwordspan").style.color = "red";
	}
}

// 이메일 클릭시 스팬문구 없앰
function removespan() {
	document.getElementById("emailspan").innerHTML = " ";
}

// 패스워드 클릭시 스팬문구 없앰
function remove() {
  document.getElementById("passwordspan").innerHTML = " ";
}



function login(){	// submit()말고 다른 함수명 줘야함?
	  var emailField = document.getElementById("email");
	  var emailJ = /^.{1,30}$/;
	  var emailJ2 = /^[A-Za-z0-9_]+[A-Za-z0-9]*[@]{1}[A-Za-z0-9]+[A-Za-z0-9]*[.]{1}[A-Za-z]{2,3}$/i;
	  var pwField = document.getElementById("pw");
	  var passwordJ = /^.{1,30}$/;
	  var passJ2 = /^.*(?=^.{8,16}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/;
	  
	  if(!emailJ.test(emailField.value)){ //공백이면
		  alert("아이디를 입력하세요.");
		  emailField.focus();
		  return false;
	  }else if(!emailJ2.test(emailField.value)){
		  alert("이메일 형식에 맞게 아이디를 입력하세요.");
		  emailField.focus();
		  return false;
	  }else if(!passwordJ.test(pwField.value)){ // 공백이면
		  alert("비밀번호를 입력하세요.");
		  pwField.focus();
		  return false;
	  }else if(!passJ2.test(pwField.value)){
		  alert("비밀번호는 8~16자 영문 대소문자, 숫자, 특수문자를 사용하세요.")
		  pwField.focus();
		  return false;
	  }else{
		  alert("비비아나 로그인 완료");
			document.loginForm.submit(); 
	  }	  
}
