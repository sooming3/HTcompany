<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Insert title here</title>

	<!-- header css -->
	<link rel="stylesheet" href="resources/css/viviana_header.css">
	<!-- main css -->
	<link rel="stylesheet" href="resources/css/viviana_index.css">
	<!-- Swiper CSS -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
	<!-- footer css -->
	<link rel="stylesheet" href="resources/css/viviana_footer.css">
	
	
	<!-- header js -->
	<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
	<script src="resources/js/viviana_header.js" type="text/javascript"></script>
	<!-- main js -->
	<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
	<script src="resources/js/viviana_index.js" type="text/javascript"></script>
	<!-- Swiper JS -->
	<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>

	<!-- 희영 -->
	<link rel="stylesheet" type="text/css" href="resources/css/cartPage.css">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Great+Vibes&display=swap" rel="stylesheet">
	<script type="text/javascript" src="resources/js/cartPage.js"></script> 
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	
	<!-- 성언 -->
	<link rel="stylesheet" href="resources/css/member_loginpage.css">
	<link rel="stylesheet" href="resources/css/member_joinpage.css">
	<!-- 회원가입페이지 -비밀번호 눈 모양 아이콘 -->	
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
	<link rel="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
	<script src="resources/js/member_joinpage.js" type="text/javascript"></script>
	<script src="resources/js/member_loginpage.js" type="text/javascript"></script>
	<!--Font-aweome-->
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 	<link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
	
	<!-- 선영 -->

</head>
<body>

	<div id="header">
	<!-- 아이콘 자리 -->
	<div class="header_icon">
	
		<div class="header_icon_left">
			<a href="#"><img class="header_iconimg_left" src="resources/icon/location_icon.png" alt="네비게이션"></a>
		</div>
		
		<div class="header_icon_right">
			<a href="#"><img onmouseover="view(true)" class="header_iconimg_right" src="resources/icon/shopping_icon.png" alt="쇼핑"></a>
			<a href="#"><img class="header_iconimg_right" src="resources/icon/like_icon.png" alt="좋아요"></a>
			<a href="#"><img class="header_iconimg_right" src="resources/icon/login2_icon.png" alt="사용자"></a>
			<a href="#"><img class="header_iconimg_right" src="resources/icon/notification_icon.png" alt="알림"></a>
		</div>
	
	</div>
	<!-- 아이콘 자리 끝 -->
	
	<!-- 로고자리 -->
		<div class="header_logo_center"><img class="header_logoimg" src="resources/img/logo.png"></div>
	<!-- 로고자리 끝 -->
	
	<!-- 메뉴자리 -->
	<nav class="header_nav">
		<ul class="header_menu">
			
			<li><a href="#">하이 주얼리</a>
				<ul class ="header_submenu">
					<li>
						<span class="header_submenu_hi">
							<span class="header_submenu_hi_sub">
							<img src="resources/img/model_hi.jpg" width ="350px" height="auto">
							<a class="header_menu_a" href="#">> 새로운 컬렉션</a>
							</span>
							<span class="header_submenu_hi_sub">
							<img src="resources/img/model_hi.jpg" width ="350px" height="auto">
							<a class="header_menu_a" href="#">> 매혹적인 작품</a>
							</span>
							<span class="header_submenu_hi_sub">
							<img src="resources/img/model_hi.jpg" width ="350px" height="auto">
							<a class="header_menu_a" href="#">> 하이 주얼리 아트</a>
							</span>
						</span>
					</li>
				</ul>
			</li>
			
			<li><a href="#">주얼리</a>
				<ul class ="header_submenu">
				 	<li>
					 	<span class="header_submenu_j">
						 	<span class="header_submenu_j_sub">
						 	<a class="header_menu_a">-카테고리별로 보기</a>
						 	<a class="header_menu_a">네크리스 및 펜던트</a>
						 	<a class="header_menu_a">브레이슬릿</a>
						 	<a class="header_menu_a">이어링</a>
						 	<a class="header_menu_a">링</a>
						 	<a class="header_menu_a">워치</a>
						 	<a class="header_menu_a">브로치</a>
						 	<a class="header_menu_a">모든 카테고리 보기 > </a>
						 	</span>
						 	<span class="header_submenu_j_sub">
						 	<a class="header_menu_a">-검색</a>
						 	<a class="header_menu_a">새로운 주얼리</a>
						 	<a class="header_menu_a">가장 인기 있는 주얼리</a>
						 	<a class="header_menu_a">심플한 주얼리</a>
						 	<a class="header_menu_a">개성있는 주얼리</a>
						 	<a class="header_menu_a">후프 이어링</a>
						 	</span>
						 	<span class="header_submenu_j_sub">
						 	<a class="header_menu_a">-메탈별로보기</a>
						 	<a class="header_menu_a">골드 주얼리</a>
						 	<a class="header_menu_a">로즈 골즈 주얼리</a>
						 	<a class="header_menu_a">플래티늄 주얼리</a>
						 	<a class="header_menu_a">실버 주얼리</a>
						 	</span>
						 	<span class="header_submenu_j_sub">
						 	<a class="header_menu_a">-잼스톤 별로 보기</a>
						 	<a class="header_menu_a">다이아몬드 주얼리</a>
						 	<a class="header_menu_a">펄 주얼리</a>
						 	<a class="header_menu_a">터코이즈 주얼리</a>
						 	<a class="header_menu_a">아쿠아마린 주얼리</a>
						 	<a class="header_menu_a">컬러 젬스톤 주얼리</a>
						 	</span>
					 	</span>
				 	</li>
				</ul>
			</li>


			<li><a href="#">웨딩</a>
				<ul class ="header_submenu">
				 	<li>
				 		<span class ="header_submenu_w">
				 			<span class="header_submenu_w_sub">
						 	<a class="header_menu_a">-웨딩</a>
						 	<a class="header_menu_a">여성용 웨딩 밴드</a>
						 	<a class="header_menu_a">남성용 웨딩 밴드</a>
						 	<a class="header_menu_a">웨딩 밴드 세트</a>
						 	<a class="header_menu_a">커플링</a>
						 	<a class="header_menu_a">커플 and 웨딩 제품 더보기 ></a>
						 	</span>
						 	<span class="header_submenu_w_sub">
						 	<a class="header_menu_a">-다이아몬드 가이드</a>
						 	<a class="header_menu_a">다이아몬드 캐럿</a>
						 	<a class="header_menu_a">다이아몬드 투명도</a>
						 	<a class="header_menu_a">다이아몬드 컬러</a>
						 	<a class="header_menu_a">다이아몬드 컷</a>
						 	<a class="header_menu_a">감정서 and 인증서</a>
						 	</span>
				 			<span class="header_submenu_w_sub">
							<img src="resources/img/model_hi.jpg" width ="350px" height="auto">
							<a class="header_menu_a" href="#">
							About Love<br>
							Love and Engagement 자세히보기 ></a>
							</span>
				 		</span>
				 	</li>
				</ul>
			</li>
			
			<li><a href="#">워치</a>
				<ul class ="header_submenu">
					<li>
				 		<span class ="header_submenu_w">
				 			<span class="header_submenu_w_sub">
						 	<a class="header_menu_a">-카테고리별로 보기</a>
						 	<a class="header_menu_a">여성용</a>
						 	<a class="header_menu_a">남성용</a>
						 	<a class="header_menu_a">다이아몬드 워치</a>
						 	<a class="header_menu_a">골드워치</a>
						 	<a class="header_menu_a">워치 더보기 ></a>
						 	</span>
						 	<span class="header_submenu_w_sub">
						 	<a class="header_menu_a">-아이코닉한 컬렉션</a>
						 	<a class="header_menu_a">그랜드 메탈 워치</a>
						 	<a class="header_menu_a">비비아나 워치</a>
						 	</span>
				 			<span class="header_submenu_w_sub">
							<img src="resources/img/model_hi.jpg" width ="350px" height="auto">
							<a class="header_menu_a" href="#">
							It's About Time<br>
							자세히보기 ></a>
							</span>
				 		</span>
				 	</li>
				</ul>
			</li>
			
			<li><a href="#">핸드백</a>
				<ul class ="header_submenu">
					<li>
				 		<span class ="header_submenu_w">
				 			<span class="header_submenu_w_sub">
						 	<a class="header_menu_a">-카테고리별로 보기</a>
						 	<a class="header_menu_a">여성용</a>
						 	<a class="header_menu_a">남성용</a>
						 	<a class="header_menu_a">백</a>
						 	<a class="header_menu_a">지갑</a>
						 	<a class="header_menu_a">아이웨어</a>
						 	<a class="header_menu_a">레더 브레이슬릿</a>
						 	<a class="header_menu_a">벨트</a>
						 	</span>
						 	<span class="header_submenu_w_sub">
						 	<a class="header_menu_a">-비비아나 컬렉션</a>
						 	<a class="header_menu_a">신제품</a>
						 	<a class="header_menu_a">체인백</a>
						 	<a class="header_menu_a">퍼스널 라이즈</a>
						 	<a class="header_menu_a">가죽 제품</a>
						 	</span>
				 			<span class="header_submenu_w_sub">
							<img src="resources/img/model_hi.jpg" width ="350px" height="auto">
							<a class="header_menu_a" href="#">
							경이로움의 색체<br>
							자세히보기 ></a>
							</span>
				 		</span>
				 	</li>
				</ul>
			</li>
			
			<li><a href="#">향수</a>
				<ul class ="header_submenu">
					<li>
				 		<span class ="header_submenu_w">
				 			<span class="header_submenu_w_sub">
						 	<a class="header_menu_a">-전체향수</a>
						 	<a class="header_menu_a">오 드 뚜왈렛</a>
						 	<a class="header_menu_a">오 드 코롱</a>
						 	<a class="header_menu_a">오 드 퍼퓸</a>
						 	</span>
						 	<span class="header_submenu_w_sub">
						 	<a class="header_menu_a">-여성용</a>
						 	<a class="header_menu_a">러브 비비아나</a>
						 	<a class="header_menu_a">프루티 비비아나</a>
						 	<a class="header_menu_a">플로럴 비비아나</a>
						 	</span>
						 	<span class="header_submenu_w_sub">
						 	<a class="header_menu_a">-남성용</a>
						 	<a class="header_menu_a">비비아나 옴므</a>
						 	<a class="header_menu_a">스포츠 옴므</a>
						 	<a class="header_menu_a">아쿠아 옴므</a>
						 	</span>
				 			<span class="header_submenu_w_sub">
							<img src="resources/img/model_hi.jpg" width ="350px" height="auto">
							<a class="header_menu_a" href="#">
							향수 컬렉션 보기 ></a>
							</span>
				 		</span>
				 	</li>
				</ul>
			</li>
			
			<li><a href="#">기프트</a>
				<ul class ="header_submenu">
					<li>
				 		<span class ="header_submenu_w">
				 			<span class="header_submenu_w_sub">
						 	<a class="header_menu_a">-대상별</a>
						 	<a class="header_menu_a">여성</a>
						 	<a class="header_menu_a">남성</a>
						 	<a class="header_menu_a">커플</a>
						 	<a class="header_menu_a">베이비</a>
						 	<a class="header_menu_a">홈</a>
						 	</span>
						 	<span class="header_submenu_w_sub">
						 	<a class="header_menu_a">-검색</a>
						 	<a class="header_menu_a">맞춤형 기프트</a>
						 	<a class="header_menu_a">기념일 기프트</a>
						 	<a class="header_menu_a">생일 기프트</a>
						 	</span>
				 			<span class="header_submenu_w_sub">
							<img src="resources/img/model_hi.jpg" width ="350px" height="auto">
							<a class="header_menu_a" href="#">
							기프트 자세히 보기 ></a>
							</span>
				 		</span>
				 	</li>
				</ul> 
			</li>
		
		</ul>
	</nav>
	<!-- 메뉴자리끝 -->
	
	<!-- 스크롤 버튼 자리 -->
	<div class="header_scrollbutton_all">
	<button class="header_scrollbutton"></button>
	<button class="header_scrollbutton"></button>
	<button class="header_scrollbutton"></button>
	<button class="header_scrollbutton"></button>
	<button class="header_scrollbutton"></button>
	<button class="header_scrollbutton"></button>
	</div>
	<!-- 스크롤 버튼 자리 끝-->
		
	</div>