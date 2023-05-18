// 카테고리 checkbox 배열 저장
$(document).ready(function(){
		$("#category_check").on('click', function(){ //계정만들기 버튼 클릭시
			var categoryItem = []; // 배열로 저장
			
			$("input[name=User_interest]:checked").each(function(){
				categoryItem.push($(this).val());
			});
			alert(categoryItem);
		});
});


// keydown이벤트 추가 후 엔터키 이벤트 제거하기
document.addEventListener('keydown', function(event) {
  if (event.keyCode === 13) {
    event.preventDefault();
  };
}, true);



function emailCheck(){
	// 이메일
	var email = document.getElementById("registration-form-email");
	//var mailJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;	//{2,3}:2글자 or 3글자(com / kr)
	var mailJ = /^[A-Za-z0-9_]+[A-Za-z0-9]*[@]{1}[A-Za-z0-9]+[A-Za-z0-9]*[.]{1}[A-Za-z]{2,3}$/i;
	// 이메일 공백시 
	if(email.value == ""){
		document.getElementById("spanEmail").innerHTML = "이메일을 입력해주세요.";
		document.getElementById("spanEmail").style.color = "red";
		email.focus();
		return false;
	};
	
	// 이메일 유효성
	if(mailJ.test(email.value)){
		//값이 true면 문장 실행
		document.getElementById("spanEmail").innerHTML = "이메일 확인되었습니다.";
		document.getElementById("spanEmail").style.color = "green";
		return true;
	}else{ // false면 문장 실행
		document.getElementById("spanEmail").innerHTML="올바른 이메일 형태로 입력해주세요.";
		document.getElementById("spanEmail").style.color ="red";
		email.focus();
		return false;
	};	
}

function passCheck(){
	var password = document.getElementById("registration-form-password");
	var passJ = /^.*(?=^.{8,16}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/;	//[!@#$%^&+=] : 키보드의 모든 특수문자
	
	if(password.value.length == 0){ // 공백 체크
		document.getElementById("passspan").innerHTML="비밀번호를 입력해주세요.";
		document.getElementById("passspan").style.color ="red";
		password.focus();
		return false;
	}else if(passJ.test(password.value)){	// 유효성 검증 완료 시 통과
		document.getElementById("passspan").innerHTML="비밀번호 확인되었습니다.";
		document.getElementById("passspan").style.color ="green";
		return true;
	}else{	// 유효성 제공
		document.getElementById("passspan").innerHTML="8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.";
		document.getElementById("passspan").style.color ="red";
		password.focus();
		return false;
	};
	
	}



function passDCheck(){
	var password1 = document.getElementById("registration-form-password");
	var pwVerified = document.getElementById("registration-form-password-confirm");
	// 비밀번호 확인(repasssp)
	
	if(pwVerified.value == ""){ // 비밀번호재확인 공백시
		document.getElementById("repasssp").innerHTML="필수 항목입니다.";
		document.getElementById("repasssp").style.color ="red";
		/*pwVerified.focus();*/
		return false;
	}else if(password1.value==pwVerified.value){ 
		document.getElementById("repasssp").innerHTML="비밀번호 일치";
		document.getElementById("repasssp").style.color="green";
		return true;
	}else{
		document.getElementById("repasssp").innerHTML="비밀번호가 일치하지 않습니다.";
		document.getElementById("repasssp").style.color="red";
		return false;
	};
}


function fnameCheck(){
	// 이름
	var firstname = document.getElementById("registration-form-fname");
	var fnameJ = /^[가-힣]{2,6}$/; //한글로 시작, 최소 2글자~최대 6글자
	
	if(firstname.value == ""){	// 이름 공백시
		document.getElementById("spanfirstname").innerHTML="이름을 입력해주세요.";
		document.getElementById("spanfirstname").style.color ="red";
		firstname.focus();
		return false;
		}else if(fnameJ.test(firstname.value)){	// 이름 유효성
		document.getElementById("spanfirstname").innerHTML="멋진 이름이네요^^";
		document.getElementById("spanfirstname").style.color="green";
		return true;
		}else{
		document.getElementById("spanfirstname").innerHTML="이름을 다시 입력하세요";
		document.getElementById("spanfirstname").style.color="red";
		firstname.focus();
		return false;
		};
}


function phoneCheck(){
	// 연락처
	var phone = document.getElementById("phone");
	var phoneJ = /^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/;
	//var reg = /^[0-9]+/g; // 숫자만 입력하는 정규식
		

	if(phone.value == ""){	// 연락처 공백시
		document.getElementById("phonespan").innerHTML="연락처를 입력해주세요.";
		document.getElementById("phonespan").style.color ="red";
		phone.focus();
		return false;
	}else if(phoneJ.test(phone.value)){  // 연락처 유효성
		document.getElementById("phonespan").innerHTML="확인되었습니다.";
		document.getElementById("phonespan").style.color="green";	
		return true;
	}else if(!phoneJ.test(phone.value)){
		document.getElementById("phonespan").innerHTML="010 부터 숫자만 입력해주세요";
		document.getElementById("phonespan").style.color="red";
		phone.focus();
		return false;
	}
}



// 카테고리 선택
function checkAll(){
	if($("#cboxAll").is(':checked')){
		$("input[name=User_interest]").prop("checked", true);
	}else{
		$("input[name=User_interest]").prop("checked", false);
	}
}

$(document).on("click", "input:checkbox[name=cbox]", function(e) {
	
	var chks = document.getElementsByName("cbox");
	var chksChecked = 0;
	
	for(var i=0; i<chks.length; i++) {
		var cbox = chks[i];
		
		if(cbox.checked) {
			chksChecked++;
		}
	}
	
	if(chks.length == chksChecked){
		$("#cboxAll").prop("checked", true);
	}else{
		$("#cboxAll").prop("checked",false);
	}
	
});


// 주소, 상세 주소 필수입력
function addrCheck(){
	var addr1 = document.getElementById("addr");
	
	if(addr1.value.length == 0){
		document.getElementById("addrSpan").innerHTML="필수 입력바랍니다.";
		document.getElementById("addrSpan").style.color="red";
		addr1.focus();
		return false;
	}else if(addr1.value.length < 8){
		document.getElementById("addrSpan").innerHTML="재입력 바랍니다.";
		document.getElementById("addrSpan").style.color="red";
		addr1.focus();
		return false;
	}else{
		document.getElementById("addrSpan").innerHTML="확인되었습니다.";
		document.getElementById("addrSpan").style.color="green";
		return true;
	}	
}
	
function detailAddrCheck(){
	var addr2 = document.getElementById("detailAddr");
	
	if(addr2.value.length == 0){
		document.getElementById("detailAddrSpan").innerHTML="필수 입력바랍니다.";
		document.getElementById("detailAddrSpan").style.color="red";
		addr2.focus();
		return false;
	}else if(addr2.value.length < 8){
		document.getElementById("detailAddrSpan").innerHTML="재입력 바랍니다.";
		document.getElementById("detailAddrSpan").style.color="red";
		addr2.focus();
		return false;
	}else{
		document.getElementById("detailAddrSpan").innerHTML="확인되었습니다.";
		document.getElementById("detailAddrSpan").style.color="green";
		return true;
	}	
}


function checkboxCheck1(){
		// 필수1
		var check1 = document.getElementById("required1");
		const target = document.getElementById("target_btn");
		// 필수1 약관동의 체크박스
		if (!check1.checked){ //체크박스 미체크시 + 계정만들기 버튼 비활성화
			document.getElementById("spanRequired1").innerHTML="필수 체크 바랍니다.";
			document.getElementById("spanRequired1").style.color="red";
			required1.focus();
			target.disabled = true;
			return false;
		}
}



// 체크박스(필수1) 체크하면 스팬문구 없애기
function checkboxComplete1(){
		var checkCom1 = document.getElementById("required1");
		
		if(checkCom1.checked){
			document.getElementById("spanRequired1").innerHTML="";
		}
}

		
function checkboxCheck2(){
		// 필수2
		var check2 = document.getElementById("required2");
		const target = document.getElementById("target_btn");
	
		
		if (!check2.checked){ //체크박스 미체크시  + 계정만들기 버튼 비활성화
			document.getElementById("spanRequired2").innerHTML="필수 체크 바랍니다.";
			document.getElementById("spanRequired2").style.color="red";
			required2.focus();
			target.disabled = true;
			return false;
			
		}
}

//체크박스(필수2) 체크하면 스팬문구 없애기
function checkboxComplete2(){
	var checkCom2 = document.getElementById("required2");
	
	if(checkCom2.checked){
		document.getElementById("spanRequired2").innerHTML="";
	}
}
	
function agreeCheck(){
		// 약관 동의확인
		var agreement = document.getElementById("agree");
		const target = document.getElementById("target_btn");
		
		if (!agreement.checked){ //체크박스 미체크시  + 계정만들기 버튼 비활성화
			document.getElementById("spanAgree").innerHTML="약관 동의 바랍니다.";
			document.getElementById("spanAgree").style.color="red";
			agree.focus();
			return false;
			target.disabled = true;
			
		}
}


// 약관동의 시 스팬문구 없애기
function agreeCheckComplete(){
		
		var agreeCom = document.getElementById("agree");
		
		if(agreeCom.checked){
			document.getElementById("spanAgree").innerHTML="";
		}
}



// 도로명 (우편번호) 검색 - daum postcode
// https://lkt01010.tistory.com/113
function execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
                // 조합된 참고항목을 해당 필드에 넣는다.
                document.getElementById("sample6_extraAddress").value = extraAddr;
            
            } else {
                document.getElementById("sample6_extraAddress").value = '';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('sample6_postcode').value = data.zonecode;
            document.getElementById("sample6_address").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("sample6_detailAddress").focus();
        }
    }).open();
}



// 이메일아이디 중복체크 팝업창(현재 공백문서)  --> DB랑 자바스크립트로 구현가능!!!
function id_check(){
	// window.open("팝업될 문서 경로", "팝업될 문서 이름", "옵션");
	window.open("","", "width=600, height=200, left=200, top=100");
}


function form_submit(){
	// 로그인정보
	var email = document.getElementById("registration-form-email");
	var emailJ =  /^.{1,30}$/;
	// 아이디 중복체크 무조건 하도록(dchk) -> checked?!
	var doubleCheck = document.getElementById("dchk");
	
	var password = document.getElementById("registration-form-password");
	var passwordJ =  /^.{1,30}$/;
	
	var passcheck = document.getElementById("registration-form-password-confirm");
	var passcheckJ =  /^.{1,30}$/;
	// 개인정보
	var name = document.getElementById("registration-form-fname");
	var nameJ =  /^.{1,30}$/;
	var phone = document.getElementById("phone");
	var phoneJ =  /^.{1,30}$/;
	// 성별 각각 라디오체크 유무 확인
	var female = document.getElementById("female");
	var male = document.getElementById("male");
	// 청구정보
	var address = document.getElementById("addr");
	var addressJ =  /^.{1,30}$/;
	var detailAddr = document.getElementById("detailAddr");
	var detailAddrJ =  /^.{1,30}$/;
	var postNumber  = document.getElementById("postNum");
	var postNumberJ =  /^.{1,30}$/;
	// 약관동의 체크박스 필수
	var box1 = document.getElementById("required1");
	var box2 = document.getElementById("required2");
	var box3 = document.getElementById("agree"); 
	
	
	if(!emailJ.test(email.value)){
		alert("이메일은 필수입력 사항입니다.");
		email.focus();
		return false;
	}else if(!passwordJ.test(password.value)){
		alert("비밀번호는 필수입력 사항입니다.");
		password.focus();
		return false;
	}else if(!passcheckJ.test(passcheck.value)){
		alert("비밀번호 재확인은 필수입니다.");
		passcheck.focus();
		return false;
	}else if(!nameJ.test(name.value)){
		alert("성함은 필수입력 사항입니다.");
		name.focus();
		return false;
	}else if(!phoneJ.test(phone.value)){
		alert("연락처는 필수입력 사항입니다.");
		phone.focus();
		return false;							
	}else if(!male.checked && female.checked){
		alert("성별 체크해주세요.");
		female.focus();
		return false;
	}else if(!addressJ.test(address.value)){
		alert("주소는 필수입력 사항입니다.");
		address.focus();
		return false;
	}else if(!detailAddrJ.test(detailAddr.value)){
		alert("상세주소는 필수입력 사항입니다.");
		detailAddr.focus();
		return false;	
	}else if(!postNumberJ.test(postNumber.value)){
		alert("우편번호는 필수입력 사항입니다.");
		postNumber.focus();
		return false;
	}else if(!box1.checked){
		alert("필수 동의해주세요");
		box1.focus();
		return false;
	}else if(!box2.checked){
		alert("필수 동의해주세요");
		box2.focus();
		return false;
	}else if(!box3.checked){
		alert("약관 동의해주세요");
		box3.focus();
		return false;
	}else{
		alert("비비아나 회원이 되신걸 환영합니다^^");
		document.formTotal.submit();  
	}
}



