
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
	    
	// 모든 조건 만족 시 문의 사항 등록    
	  else{
			alert("등록되었습니다");
			document.myForm.submit();
		  }
}


 
  
