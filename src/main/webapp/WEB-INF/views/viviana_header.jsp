<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Insert title here</title>

	<!-- header css -->
	<link rel="stylesheet" href="/resources/css/viviana_header.css">
	<!-- main css -->
	<link rel="stylesheet" href="/resources/css/viviana_index.css">
	<!-- Swiper CSS -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
	<!-- footer css -->
	<link rel="stylesheet" href="/resources/css/viviana_footer.css">
	
	
	<!-- header js -->
	<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="/resources/js/viviana_header.js" type="text/javascript"></script>
	<!-- Swiper JS -->
	<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
	
	<!-- 희영 -->
	<link rel="stylesheet" type="text/css" href="/resources/css/cartPage.css">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Great+Vibes&display=swap" rel="stylesheet">
	<script type="text/javascript" src="resources/js/cartPage.js"></script> 
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <!-- 수미 -->
    <!-- <link rel="stylesheet" type="text/css" href="/resources/css/product.css">  -->
    <link rel="stylesheet" type="text/css" href="/resources/css/product_detail.css">
    
    <!-- 성언 -->
    <link rel="stylesheet" href="/resources/css/member_loginpage.css">
	<link rel="stylesheet" href="/resources/css/member_joinpage.css">
	<link rel="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-pzTywL1yXCjWlM7BP+PBVd8tj5TXvi34+YxY4FxsB0iZh94zFZpr77JiNo/Adon6BYzN3HgU2wZk5XdBty0b9w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
	
	<!-- 회원가입페이지 -비밀번호 눈 모양 아이콘 -->	
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
	<!--Font-aweome-->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
	<script src="/resources/js/member_joinpage.js" type="text/javascript"></script>
	<script src="/resources/js/member_loginpage.js" type="text/javascript"></script>
	<!-- 회원가입 생일 달력위젯 -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.min.js"></script>
	<link rel="stylesheet" href="https://code.jquery.com/ui/1.13.0/themes/smoothness/jquery-ui.css">

	<!-- 선영 -->
	<link rel="stylesheet" href="/resources/css/Board_answer.css">
	<link rel="stylesheet" href="/resources/css/Board_list.css">
	<link rel="stylesheet" href="/resources/css/Board_list.css">
	<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
	<script src="/resources/js/Board_question.js" type="text/javascript"></script>
	<link rel="stylesheet" href="/resources/css/Board_question.css">
	
</head>
<body>

	<div id="header">
	<!-- 아이콘 자리 -->
	<div class="header_icon">
	
		<div class="header_icon_left">
			<a href="#"><img class="header_iconimg_left" src="/resources/icon/location_icon.png" alt="네비게이션"></a>
		</div>
		
		<div class="header_icon_right">

			<a href="/cart"><img onmouseover="view(true)" class="header_iconimg_right" src="/resources/icon/shopping_icon.png" alt="쇼핑"></a>
				<%@ include file="cartPage_sideMenu.jsp"%>
			<a href="/list"><img class="header_iconimg_right" src="/resources/icon/like_icon.png" alt="좋아요"></a>
			
			<a href="#"><img class="header_iconimg_right" src="/resources/icon/notification_icon.png" alt="알림"></a>
		<!-- 성언  -->
		<c:choose>
		    <c:when test="${empty sessionScope.login}">
		      <!-- 로그인하지 않은 상태 -->
		      <a href="/login"><span class="material-symbols-outlined header_iconimg_right">login</span></a>
		    </c:when>
		    <c:otherwise>
		      <!-- 로그인한 상태 -->
		      <span class="memberLogin">${login.name} &nbsp;님</span>
		     <!--  <a href="logout.do"><span class="material-symbols-outlined header_iconimg_right" onclick="logOUT_ment()">logout</span></a> -->
		     <a href="#" onclick="logout()"><span class="material-symbols-outlined header_iconimg_right">logout</span></a>
		      <a href="/personalInfo"><img class="header_iconimg_right" src="/resources/icon/login2_icon.png" alt="사용자"></a> 
		    </c:otherwise>
		 </c:choose>
		</div>
	
	</div>
	<!-- 아이콘 자리 끝 -->
	
	<!-- 로고자리 -->
		<div class="header_logo_center"><a href="/"><img class="header_logoimg" src="/resources/img/logo.png"></a></div>
	<!-- 로고자리 끝 -->
	
	<!-- 메뉴자리 -->
	<nav class="header_nav">
		<ul class="header_menu">
			
			<li class="menu align-center expanded text-center SMN_effect-46"><a class="header_a" href="#">하이 주얼리</a>
				<ul class ="header_submenu">
					<li>
						<span class="header_submenu_hi">
							<span class="header_submenu_hi_sub">
							<img class="header_hi_img" src="/resources/img/hi_model_01.jpg" width ="350px" height="440px">
							<!-- <a class="header_imgbox">새로운 컬렉션</a> -->
							  
							<a class="header_menu_a_bold" href="/detail">> 새로운 컬렉션</a>
							</span>
							<span class="header_submenu_hi_sub">
							<img class="header_hi_img" src="/resources/img/hi_model_02.jpg" width ="350px" height="440px">
							<!-- <a class="header_imgbox">새로운 컬렉션</a> -->
							<a class="header_menu_a_bold" href="/detail">> 매혹적인 작품</a>
							</span>
							<span class="header_submenu_hi_sub">
							<img class="header_hi_img" src="/resources/img/hi_model_03.jpg" width ="350px" height="440px">
							<!-- <a class="header_imgbox">새로운 컬렉션</a> -->
							<a class="header_menu_a_bold" href="/detail">> 하이 주얼리 아트</a>
							</span>
						</span>
					</li>
				</ul>
			</li>
			
			<li class="menu align-center expanded text-center SMN_effect-46"><a class="header_a" href="#">주얼리</a>
				<ul class ="header_submenu">
				 	<li>
					 	<span class="header_submenu_j">
						 	<span class="header_submenu_j_sub">
						 	<a class="header_menu_a_bold">카테고리별로 보기</a>
						 	<a class="header_menu_a">네크리스 및 펜던트</a>
						 	<a class="header_menu_a">브레이슬릿</a>
						 	<a class="header_menu_a">이어링</a>
						 	<a class="header_menu_a">링</a>
						 	<a class="header_menu_a">워치</a>
						 	<a class="header_menu_a">브로치</a>
						 	<a class="header_menu_a_bold">모든 카테고리 보기 > </a>
						 	</span>
						 	<span class="header_submenu_j_sub">
						 	<a class="header_menu_a_bold">검색</a>
						 	<a class="header_menu_a">새로운 주얼리</a>
						 	<a class="header_menu_a">가장 인기 있는 주얼리</a>
						 	<a class="header_menu_a">심플한 주얼리</a>
						 	<a class="header_menu_a">개성있는 주얼리</a>
						 	<a class="header_menu_a">후프 이어링</a>
						 	</span>
						 	<span class="header_submenu_j_sub">
						 	<a class="header_menu_a_bold">메탈별로보기</a>
						 	<a class="header_menu_a">골드 주얼리</a>
						 	<a class="header_menu_a">로즈 골즈 주얼리</a>
						 	<a class="header_menu_a">플래티늄 주얼리</a>
						 	<a class="header_menu_a">실버 주얼리</a>
						 	</span>
						 	<span class="header_submenu_j_sub">
						 	<a class="header_menu_a_bold">잼스톤 별로 보기</a>
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


			<li class="menu align-center expanded text-center SMN_effect-46"><a class="header_a" href="#">웨딩</a>
				<ul class ="header_submenu">
				 	<li>
				 		<span class ="header_submenu_w">
				 			<span class="header_submenu_w_sub">
						 	<a class="header_menu_a_bold">웨딩</a>
						 	<a class="header_menu_a">여성용 웨딩 밴드</a>
						 	<a class="header_menu_a">남성용 웨딩 밴드</a>
						 	<a class="header_menu_a">웨딩 밴드 세트</a>
						 	<a class="header_menu_a">커플링</a>
						 	<a class="header_menu_a_bold">커플 and 웨딩 제품 더보기 ></a>
						 	</span>
						 	<span class="header_submenu_w_sub">
						 	<a class="header_menu_a_bold">다이아몬드 가이드</a>
						 	<a class="header_menu_a">다이아몬드 캐럿</a>
						 	<a class="header_menu_a">다이아몬드 투명도</a>
						 	<a class="header_menu_a">다이아몬드 컬러</a>
						 	<a class="header_menu_a">다이아몬드 컷</a>
						 	<a class="header_menu_a">감정서 and 인증서</a>
						 	</span>
				 			<span class="header_submenu_w_sub">
							<img src="/resources/img/wedding_01.jpg" width ="350px" height="auto">
							<a class="header_menu_a_bold" href="#">
							Love and Engagement 자세히보기 >
							</a>
							</span>
				 		</span>
				 	</li>
				</ul>
			</li>
			
			<li class="menu align-center expanded text-center SMN_effect-46"><a class="header_a" href="#">워치</a>
				<ul class ="header_submenu">
					<li>
				 		<span class ="header_submenu_w">
				 			<span class="header_submenu_w_sub">
						 	<a class="header_menu_a_bold">카테고리별로 보기</a>
						 	<a class="header_menu_a">여성용</a>
						 	<a class="header_menu_a">남성용</a>
						 	<a class="header_menu_a">다이아몬드 워치</a>
						 	<a class="header_menu_a">골드워치</a>
						 	<a class="header_menu_a">워치 더보기 ></a>
						 	</span>
						 	<span class="header_submenu_w_sub">
						 	<a class="header_menu_a_bold">아이코닉한 컬렉션</a>
						 	<a class="header_menu_a">그랜드 메탈 워치</a>
						 	<a class="header_menu_a">비비아나 워치</a>
						 	</span>
				 			<span class="header_submenu_w_sub">
							<img src="/resources/img/watch_01.jpg" width ="350px" height="auto">
							<a class="header_menu_a_bold" href="#">
							It's About Time 자세히보기 >
							</a>
							</span>
				 		</span>
				 	</li>
				</ul>
			</li>
			
			<li class="menu align-center expanded text-center SMN_effect-46"><a class="header_a" href="#">핸드백</a>
				<ul class ="header_submenu">
					<li>
				 		<span class ="header_submenu_w">
				 			<span class="header_submenu_w_sub">
						 	<a class="header_menu_a_bold">카테고리별로 보기</a>
						 	<a class="header_menu_a">여성용</a>
						 	<a class="header_menu_a">남성용</a>
						 	<a class="header_menu_a">백</a>
						 	<a class="header_menu_a">지갑</a>
						 	<a class="header_menu_a">아이웨어</a>
						 	<a class="header_menu_a">레더 브레이슬릿</a>
						 	<a class="header_menu_a">벨트</a>
						 	</span>
						 	<span class="header_submenu_w_sub">
						 	<a class="header_menu_a_bold">비비아나 컬렉션</a>
						 	<a class="header_menu_a">신제품</a>
						 	<a class="header_menu_a">체인백</a>
						 	<a class="header_menu_a">퍼스널 라이즈</a>
						 	<a class="header_menu_a">가죽 제품</a>
						 	</span>
				 			<span class="header_submenu_w_sub">
							<img src="/resources/img/handbag_01.jpg" width ="350px" height="auto">
							<a class="header_menu_a_bold" href="#">
							가죽 제품 더보기 >
							</a>
							</span>
				 		</span>
				 	</li>
				</ul>
			</li>
			
			<li class="menu align-center expanded text-center SMN_effect-46"><a class="header_a" href="#">향수</a>
				<ul class ="header_submenu">
					<li>
				 		<span class ="header_submenu_w">
				 			<span class="header_submenu_w_sub">
						 	<a class="header_menu_a_bold">전체향수</a>
						 	<a class="header_menu_a">오 드 뚜왈렛</a>
						 	<a class="header_menu_a">오 드 코롱</a>
						 	<a class="header_menu_a">오 드 퍼퓸</a>
						 	</span>
						 	<span class="header_submenu_w_sub">
						 	<a class="header_menu_a_bold">여성용</a>
						 	<a class="header_menu_a">러브 비비아나</a>
						 	<a class="header_menu_a">프루티 비비아나</a>
						 	<a class="header_menu_a">플로럴 비비아나</a>
						 	</span>
						 	<span class="header_submenu_w_sub">
						 	<a class="header_menu_a_bold">남성용</a>
						 	<a class="header_menu_a">비비아나 옴므</a>
						 	<a class="header_menu_a">스포츠 옴므</a>
						 	<a class="header_menu_a">아쿠아 옴므</a>
						 	</span>
				 			<span class="header_submenu_w_sub">
							<img src="/resources/img/parfum_01.jpg" width ="350px" height="auto">
							<a class="header_menu_a_bold" href="#">
							향수 컬렉션 보기 ></a>
							</span>
				 		</span>
				 	</li>
				</ul>
			</li>
			
			<li class="menu align-center expanded text-center SMN_effect-46"><a class="header_a" href="#">기프트</a>
				<ul class ="header_submenu">
					<li>
				 		<span class ="header_submenu_w">
				 			<span class="header_submenu_w_sub">
						 	<a class="header_menu_a_bold">대상별</a>
						 	<a class="header_menu_a">여성</a>
						 	<a class="header_menu_a">남성</a>
						 	<a class="header_menu_a">커플</a>
						 	<a class="header_menu_a">베이비</a>
						 	<a class="header_menu_a">홈</a>
						 	</span>
						 	<span class="header_submenu_w_sub">
						 	<a class="header_menu_a_bold">검색</a>
						 	<a class="header_menu_a">맞춤형 기프트</a>
						 	<a class="header_menu_a">기념일 기프트</a>
						 	<a class="header_menu_a">생일 기프트</a>
						 	</span>
				 			<span class="header_submenu_w_sub">
							<img src="/resources/img/gift_01.jpg" width ="350px" height="auto">
							<a class="header_menu_a_bold" href="#">
							기프트 자세히 보기 ></a>
							</span>
				 		</span>
				 	</li>
				</ul> 
			</li>
		
		</ul>
		
							  <!-- start -->
<!-- 								<span class="menu align-center expanded text-center SMN_effect-46">
									<a href="">Home</a>
								</span> -->
							  <!-- // end -->
		
	</nav>
	<!-- 메뉴자리끝 -->
	
	<!-- 스크롤 버튼 자리 -->
<!-- 	<div class="header_scrollbutton_all">
	<button class="header_scrollbutton"></button>
	<button class="header_scrollbutton"></button>
	<button class="header_scrollbutton"></button>
	<button class="header_scrollbutton"></button>
	<button class="header_scrollbutton"></button>
	<button class="header_scrollbutton"></button>
	</div> -->
	<!-- 스크롤 버튼 자리 끝-->
		
	</div>