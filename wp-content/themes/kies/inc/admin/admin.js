var $ = jQuery;
$(document).ready(function(e) {
	var news_url = $('#toplevel_page_theme-option ul.wp-submenu li:nth-child(3) a').attr('href');
	$('#menu-posts-news ul.wp-submenu li:nth-child(4) a').attr('href', news_url);
	//wp-has-submenu
	$('#toplevel_page_theme-option').removeClass('wp-has-submenu');
	if( $('#toplevel_page_theme-option ul.wp-submenu li:nth-child(3)').hasClass('current') ){
		$('#menu-posts-news').addClass('wp-menu-open');
		$('#menu-posts-news > a').addClass('wp-menu-open');
		$('#menu-posts-news').addClass('wp-has-current-submenu');
		$('#menu-posts-news > a').addClass('wp-has-current-submenu');
		$('#menu-posts-news').removeClass('wp-not-current-submenu');
		$('#menu-posts-news ul.wp-submenu li:nth-child(4)').addClass('current');
		$('#menu-posts-news ul.wp-submenu li:nth-child(4) a').addClass('current');
		$('#menu-posts-news ul.wp-submenu li:nth-child(4) a').attr('aria-current', 'page');
		
		$('#toplevel_page_theme-option').removeClass('wp-menu-open');
		$('#toplevel_page_theme-option > a').removeClass('wp-menu-open');
		$('#toplevel_page_theme-option').removeClass('wp-has-current-submenu');
		$('#toplevel_page_theme-option > a').removeClass('wp-has-current-submenu');
		
		$('#toplevel_page_theme-option').addClass('wp-not-current-submenu');
		
		
	}
    
});