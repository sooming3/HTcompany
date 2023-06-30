jQuery(document).ready(function(){
	
	$('.header_menu>li').mouseover(function(){
		$(this).find('.header_submenu').stop().slideDown(0);
	}).mouseout(function(){
		$(this).find('.header_submenu').stop().slideUp(0);
	});
});


//로그인,로그아웃 아이콘 교차
var loginIcon = document.querySelector('.header_icon_right .material-symbols-outlined');

 if (session.getAttribute("login") != null) { 
  // 세션에 id값이 있으면 로그인 아이콘을 로그아웃 아이콘으로 변경
  loginIcon.textContent = "logout";
} 
 
 
//로그아웃 전 confirm창 띄우고, "확인"버튼 클릭 시 로그아웃 진행
 function logout() {
    var check = confirm("로그아웃 하시겠습니까?");
    if (check) {
        // '확인'을 눌렀을 때 로그아웃 요청을 보냅니다.
        $.ajax({
            url: '/logoutdo', // 로그아웃 요청을 처리하는 URL
            type: 'POST',
            success: function(response) {
                // 로그아웃 요청이 성공적으로 완료되면, 메인 페이지로 리다이렉트합니다.
                window.location.href = "/";
                },
                error: function(error) {
                    console.log(error);}
            });
        
    } 
 }

	