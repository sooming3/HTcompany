// 사이드 메뉴
function view(opt) {
	if(opt) {
		sideMenu.style.display = "block";
		$('body').css('overflow', 'hidden');
	}
	else {
		sideMenu.style.display = "none";
	}
}


//전체 삭제 기능
//모달 열기
$(document).ready(function() {
	$(".all_remove").click(function() {
		$("#removeModal").show();
		$(".modal-overlay").show();
		$('body').css('overflow', 'hidden');
	});

	$(".all_remove_btn").click(function() {
		$("#cartPage").remove();
		$(".modal-overlay").hide();
		$("#emptyPage").show();
		$('body').css('overflow-y', 'scroll');
	});
});
// 모달 닫기
$(document).ready(function() {
	// x 아이콘 클릭 시 모달 닫기
	$(".modal_close").click(function() {
		$("#removeModal").hide();
		$(".modal-overlay").hide();
		$('body').css('overflow-y', 'scroll');
	});
});

/*function allremove(){
	const div = document.getElementById('cartPage');
	div.remove();
	emptyPage.style.display = "block";
}
function openPopup(){
	const div = document.getElementById('removePopup');
	div.style.display = "block";
}*/

//개별 삭제 팝업 열기/닫기
//모달 열기
$(document).ready(function() {
	$(".icon_remove").click(function() {
		$("#choiceModal").show();
		$(".modal-overlay").show();
		$('body').css('overflow', 'hidden');
	});
});
// 모달 닫기
$(document).ready(function() {
	// x 아이콘 클릭 시 모달 닫기
	$(".modal_close").click(function() {
		$("#choiceModal").hide();
		$(".modal-overlay").hide();
		$('body').css('overflow-y', 'scroll');
	});
});
/*function choicePopup(){
const div = document.getElementById('choicePopup');
div.style.display = "block";
}
function deletePopup(){
const div = document.getElementById('choicePopup');
div.style.display = "none";
}*/

// 옵션 수정 팝업창 열기/닫기
//모달 열기
$(document).ready(function() {
	$(".option_update").click(function() {
		$("#updateModal").show();
		$(".modal-overlay").show();
		$('body').css('overflow', 'hidden');
	});
});
// 모달 닫기
$(document).ready(function() {
	// x 아이콘 클릭 시 모달 닫기
	$(".modal_close").click(function() {
		$("#updateModal").hide();
		$(".modal-overlay").hide();
		$('body').css('overflow-y', 'scroll');
	});
});

/*function openPopup2(){
	const div = document.getElementById('updatePopup');
	div.style.display = "block";
}
function removePopup2(){
	const div = document.getElementById('updatePopup');
	div.style.display = "none";
}*/

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
		
// 천의 자리 콤마찍기
function numberWithCommas(number) {
	  return number.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}

// 주문서 footer와 겹치지 않게
window.addEventListener("scroll", function () {
    var order = document.getElementById("order");
    var footer = document.getElementById("footer");
    var footerOffset = footer.getBoundingClientRect().top; // footer 요소의 현재 위치

    if (footerOffset <= window.innerHeight) {
      // 스크롤을 내리다가 footer를 만났을 때
      order.style.position = "absolute";
      order.style.top = footerOffset - order.offsetHeight + "px";
    } else {
      // 스크롤을 올리면 다시 원래 위치에 고정
      order.style.position = "fixed";
      order.style.top = "475";
    }
});
/*
// 모달 열기
$(document).ready(function() {
	$(".modalShow").click(function() {
		$(".modal").show();
		$(".modal-overlay").show();
	});
});

// 모달 닫기
$(document).ready(function() {
	// x 아이콘 클릭 시 모달 닫기
	$(".closeB").click(function() {
		$(".modal").hide();
		$(".modal-overlay").hide();
	});
});*/