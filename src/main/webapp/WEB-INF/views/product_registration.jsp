<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="/product" method="POST">
	상품코드
	<input type="text" id="g_num" name="g_num">
	상품명
	<input type="text" id="g_name" name="g_name">
	상품이미지
	<input type="text" id="g_image" name="g_image">
	상품이미지1
	<input type="text" id="g_image1" name="g_image1">
	상품이미지2
	<input type="text" id="g_image2" name="g_image2">
	상품이미지3
	<input type="text" id="g_image3" name="g_image3">
	상품설명
	<input type="text" id="g_content" name="g_content">
	
<!-- 	상품종류
	<input type="text" id="g_kind" name="g_kind">
	상품사이즈
	<input type="text" id="g_size" name="g_size">
	상품컬러
	<input type="text" id="g_color" name="g_color"> -->
	
    상품종류
    <select id="g_kind" name="g_kind" onchange="updateOptions()">
        <option value="선택">선택</option>
        <option value="쥬얼리">쥬얼리</option>
        <option value="워치">워치</option>
        <option value="핸드백">핸드백</option>
        <!-- 다른 상품종류 옵션들 추가 -->
    </select>

    색상
    <select id="g_color" name="g_color">
        <!-- 초기 색상 옵션들 -->
    </select>

    사이즈
    <select id="g_size" name="g_size">
        <!-- 초기 사이즈 옵션들 -->
    </select>
	
	상품가격
	<input type="text" id="g_price" name="g_price">
	상품판매여부
	<input type="text" id="g_useyn" name="g_useyn">
	상품등록날짜
	<input type="hidden" id="g_regdate" name="g_regdate">
	
	<button type="submit" class="button">확인</button>	
</form>

<script>
    function updateOptions() {
        var g_kind = document.getElementById("g_kind").value;
        var g_color = document.getElementById("g_color");
        var g_size = document.getElementById("g_size");

        // 기존 옵션들 제거
        g_color.innerHTML = "";
        g_size.innerHTML = "";

        if (g_kind === "쥬얼리") {
            // 의류에 대한 색상과 사이즈 옵션 설정
            var colors = ["실버", "골드", "로즈골드"]; // 의류에 대한 색상 옵션들
            var sizes = ["49", "50", "51", "52"]; // 의류에 대한 사이즈 옵션들
            for (var i = 0; i < colors.length; i++) {
                var option = document.createElement("option");
                option.text = colors[i];
                g_color.add(option);
            }
            for (var i = 0; i < sizes.length; i++) {
                var option = document.createElement("option");
                option.text = sizes[i];
                g_size.add(option);
            }
        } else if (g_kind === "워치") {
            // 신발에 대한 색상과 사이즈 옵션 설정
            var colors = ["메탈", "가죽", "스틸"]; // 신발에 대한 색상 옵션들
            var sizes = ["26", "27", "33"]; // 신발에 대한 사이즈 옵션들
            for (var i = 0; i < colors.length; i++) {
                var option = document.createElement("option");
                option.text = colors[i];
                g_color.add(option);
            }
            for (var i = 0; i < sizes.length; i++) {
                var option = document.createElement("option");
                option.text = sizes[i];
                g_size.add(option);
            }
        } else if (g_kind === "핸드백") {
            // 신발에 대한 색상과 사이즈 옵션 설정
            var colors = ["블랙", "레드", "그린"]; // 신발에 대한 색상 옵션들
            var sizes = ["S", "M", "L"]; // 신발에 대한 사이즈 옵션들
            for (var i = 0; i < colors.length; i++) {
                var option = document.createElement("option");
                option.text = colors[i];
                g_color.add(option);
            }
            for (var i = 0; i < sizes.length; i++) {
                var option = document.createElement("option");
                option.text = sizes[i];
                g_size.add(option);
            }
        }
    }
</script>

</body>
</html>