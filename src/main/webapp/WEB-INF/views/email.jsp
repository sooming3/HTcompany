<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="/resources/js/email.js"></script>
<link rel="stylesheet" href="/resources/css/email.css">

</head>
<body>

<div id="container" class="container">
	<div class="content">
		<div class="join_wrap">
			<form id="join_frm" action="/email" method="post">
				<div class="join_title">회원가입</div>
				<div class="join_box">			
					<div class="email_auth">
						<input type="text" placeholder="이메일" name="email" id="email" class="email">
						<button type="button" id="email_auth_btn" class="email_auth_btn">인증번호 받기</button>
					</div>
					<input type="text" placeholder="인증번호 입력" id="email_auth_key">
				</div>
				<button type="button" id="join" class="join_btn">가입하기</button>
			</form>
		</div>
	</div>
</div>

</body>
</html>