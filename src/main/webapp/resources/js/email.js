 $(function() { 
 	
 	var email_auth_cd = '';
 
	$('#join').click(function(){
		
		if($('#email_auth_key').val() != email_auth_cd){
			alert("인증번호가 일치하지 않습니다.");
			return false;
		}else{
			alert("인증번호 일치");
			location.href="/join"
		}
		fn_join();
	});
	
	$(".email_auth_btn").click(function(){	     	 
    	 var email = $('#email').val();
    	 
    	 //이메일 입력
    	 if(email == ''){
    	 	alert("이메일을 입력해주세요.");
    	 	return false;
    	 }
    	 
    	 //인증번호 발송
    	 $.ajax({
			type : "POST",
			url : "/email",
			data : {email : email},
			success: function(data){
				alert("인증번호가 발송되었습니다.");
				console.log(data);
				email_auth_cd = data;
			},
			error: function(data){
				alert("메일 발송에 실패했습니다.");
			}
		});//인증번호 발송
    	 
	});
	
 });//인증번호