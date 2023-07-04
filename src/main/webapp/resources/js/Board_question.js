
function titlechk(){
	 let title = document.getElementById("title").value
	 let check = true;
	  // 제목확인
	  if(title===""){
	    document.getElementById("titleError").innerHTML="제목을 입력하세요."
	    check = false
	  }else{
	    document.getElementById("titleError").innerHTML=""
	  }
     
}
   
function writerchk(){
	 let writer = document.getElementById("writer").value
	 let check = true;
	  // 작성자확인
	  if(writer===""){
	    document.getElementById("writerError").innerHTML="이름 또는 아이디를 입력하세요."
	    check = false
	  }else{
	    document.getElementById("writerError").innerHTML=""
	  }

}

function numberchk(){
	 let number = document.getElementById("number").value
	 let check = true;
	 
	  // 연락처확인
	  if(number===""){
	    document.getElementById("numberError").innerHTML="연락처를 입력하세요."
	    check = false
	  }else{
	    document.getElementById("numberError").innerHTML=""
	  }
	  

}


// 확인버튼 클릭 시 유효성 검사
function LastCheck(){
	
	// option value=0  분류사항 미선택 시  alert  
	  var value_str = document.getElementById('select_value');
		if(value_str.options[value_str.selectedIndex].value === "0"){
			alert("문의 사항을 선택해주세요.");
			value_str.focus();
			 return false;
		}
		
	// 연락처 숫자만 입력 가능하도록
		var number = document.getElementById("number");
			
		var numberJ = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;
		  if (!numberJ.test(number.value)) {
		    alert("연락처를 올바르게 입력해주세요. ");
		    number.focus();
		    return false;
		  } 
		  
	
	// 작성자,제목 적어도 1글자이상 입력 확인
	var title  = document.getElementById("title");
	var writer  = document.getElementById("writer");
	
	 var titleJ = /^.{1,30}$/;
	    if (!titleJ.test(title.value)){
	    	document.getElementById("titleError").innerHTML="제목을 입력하세요."
	    	return false;
	    }
	 var writerJ = /^.{1,30}$/;
	    if (!titleJ.test(writer.value)){
	    	  document.getElementById("writerError").innerHTML="이름 또는 아이디를 입력하세요."
	    	return false;
	    }
	 
	// 비공개 글 선택 시 비밀번호 입력하지 않으면 알림표시
	 var publicOption = document.getElementById("yes");
	 var privateOption = document.getElementById("no");
	 var passwordInput = document.getElementById("password");
	 var pwError = document.getElementById("pwError");

	 if (privateOption.checked && passwordInput.value === "") {
	     pwError.textContent = "비밀번호를 입력해주세요.";
	      // 알림 표시
	      alert("비밀번호를 입력해주세요.");
	    } 
	      
	// 모든 조건 만족 시 문의 사항 등록    
	  else{
			alert("등록되었습니다");
			document.myForm.submit();
		  }
}


$(document).ready(function() {
  // 검색 버튼 클릭 시 이벤트 처리
  $(".search_bt").click(function() {
    // 검색어 가져오기
    var keyword = $("#search").val();
    
    // 검색어 유효성 검사 등 원하는 로직을 수행한 후,
    // 필요에 따라 검색 결과 페이지로 이동하거나 추가적인 처리를 수행할 수 있습니다.
    
    // 검색 결과 페이지로 이동하는 예시
    var url = "/Board_list?type=T&keyword=" + keyword;
    window.location.href = url;
  });
});


  
