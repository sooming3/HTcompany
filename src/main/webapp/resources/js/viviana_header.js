jQuery(document).ready(function(){
	
	$('.header_menu>li').mouseover(function(){
		$(this).find('.header_submenu').stop().slideDown(0);
	}).mouseout(function(){
		$(this).find('.header_submenu').stop().slideUp(0);
	});
});
