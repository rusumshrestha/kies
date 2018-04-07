var $ = jQuery;
$(document).ready(function(e) {
	if( $('body').hasClass('blog') ){
		$('a.load-more').on('click', this, function(e){
			e.preventDefault();
			var page_id = $(this).attr('data-page');
			$.ajax({
				url: kiesObject.ajaxurl + '?action=newsLoadMore',
				xhrFields: {
					withCredentials: true
				},
				data: { page: page_id, security: kiesObject.ajax_nonce},
				type: 'POST',
				datatype: 'HTML',
				beforeSend: function () {
					$('.load-more-gif').show();
				},
				success: function (data) {
					$('.load-more-gif').hide();
					var is_last = data.search("last-page");
					var newHtml = $.parseHTML(data);
					$('ul.news-list').append(newHtml);
					page_id = parseInt(page_id)+1;
					$('a.load-more').attr('data-page', page_id);
					
					if(data.indexOf('no news found') != -1 || is_last != -1 || data == '' ){
						$('a.load-more').hide();
					}else{
						$('a.load-more').show();
					}
				}
			});
		});
	}
	
	if( $('body').hasClass('page-template-template-downloads') ){
		$('a.load-more').on('click', this, function(e){
			e.preventDefault();
			var page_id = $(this).attr('data-page');
			var id = $(this).attr('data-id');
			
			$.ajax({
				url: kiesObject.ajaxurl + '?action=downloadLoadMore',
				xhrFields: {
					withCredentials: true
				},
				data: { page: page_id, term_id: id, security: kiesObject.ajax_nonce},
				type: 'POST',
				datatype: 'HTML',
				beforeSend: function () {
					$('.load-more-gif').show();
				},
				success: function (data) {
					$('.load-more-gif').hide();
					var is_last = data.search("last-page");
					var newHtml = $.parseHTML(data);
					$('ul.news-list').append(newHtml);
					page_id = parseInt(page_id)+1;
					$('a.load-more').attr('data-page', page_id);
					
					if(data.indexOf('no news found') != -1 || is_last != -1 || data == '' ){
						$('a.load-more').hide();
					}else{
						$('a.load-more').show();
					}
				}
			});
		});
	}
});