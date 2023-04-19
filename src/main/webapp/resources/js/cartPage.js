// 사이드 메뉴
function view(opt) {
	if(opt) {
		sideMenu.style.display = "block";
	}
	else {
		sideMenu.style.display = "none";
	}
}

// 전체 삭제 기능
function allremove(){
	const div = document.getElementById('cartPage');
	div.remove();
	emptyPage.style.display = "block";
}

// 팝업창 열기/닫기
function openPopup(){
	const div = document.getElementById('removePopup');
	div.style.display = "block";
}
function removePopup(){
	const div = document.getElementById('removePopup');
	div.style.display = "none";
}

//개별 삭제 팝업 열기/닫기
function choicePopup(){
	const div = document.getElementById('choicePopup');
	div.style.display = "block";
}
function deletePopup(){
	const div = document.getElementById('choicePopup');
	div.style.display = "none";
}

// 옵션 수정 팝업창 열기/닫기
function openPopup2(){
	const div = document.getElementById('updatePopup');
	div.style.display = "block";
}
function removePopup2(){
	const div = document.getElementById('updatePopup');
	div.style.display = "none";
}

// 수량 증감에 따른 가격변동
$(document).ready(function(){
	// .val가 1이면, 2면, 3이면
	$('.numOption').on("change",function(){
		
/*	var x = $(".numOption:selected").val();
	var y = $(".onlyPrice").HTML();
*/		
		var x = this.value;
		alert(x);
		
		var y = $('.onlyPrice').html();
		y = x*y;
		//alert(y);
		
		$('.onlyPrice').html(y)
	})
	

	// 화면 새로고침 후
	// 합계 금액이 변경		
		

})


/*$(document).ready(function(){
	// 검색버튼을 클릭하면
	$("input[name='search']").on("click",function(){
		// pageNum에 1을 초기화
		$("input[name='pageNum']").val("1");
		// form태그를 submit
		$("#searchForm").submit();
	})
})*/

/*jQuery(document).ready(function(){
	
	$('.numOption').on("change",function(){
		$(this).find('.header_submenu').stop().slideDown(0);
	}).mouseout(function(){
		$(this).find('.header_submenu').stop().slideUp(0);
	});
});
*/
		
/*
//숫자 3자리 콤마찍기
Number.prototype.formatNumber = function(){

    if(this==0) return 0;

    let regex = /(^[+-]?\d+)(\d)/;

    let nstr = (this + '');

    while (regex.test(nstr)) nstr = nstr.replace(regex, '$1' + ',' + '$2');

    return nstr;

}
*/