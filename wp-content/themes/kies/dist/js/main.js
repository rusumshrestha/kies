var $ = jQuery;
$(document).ready(function(e) {
	if( $('body').hasClass('blog') ){
		$('a.load-more').on('click', this, function(e){
			e.preventDefault();
			var page_id = $('a.load-more').attr('data-page');
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
					var page_id = $('a.load-more').attr('data-page');
					var is_last = data.search("last-page");
					var newHtml = $.parseHTML(data);
					$('ul.new-list-wrap').append(newHtml);
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
					$('.download-'+id+'-wrap .four-col').append(newHtml);
					page_id = parseInt(page_id)+1;
					$('.download-'+id+'-wrap a.load-more').attr('data-page', page_id);
					
					if(data.indexOf('no download found') != -1 || is_last != -1 || data == '' ){
						$('.download-'+id+'-wrap a.load-more').hide();
					}else{
						$('.download-'+id+'-wrap a.load-more').show();
					}
				}
			});
		});
		
		$('form.download-search').on('submit', this, function(e){
			e.preventDefault();
			
			var page_id = $(this).find('.download-input').attr('data-page');
			var search_input = $(this).find('.download-input').val();
			var result_per_page = $(this).find('.download-input').attr('data-per-page');
			
			download_search(page_id, search_input, result_per_page );
		});
		$('a.load-more-search').on('click', this, function(e){
			e.preventDefault();
			var page_id = $('form.download-search').find('.download-input').attr('data-page');
			var search_input = $('form.download-search').find('.download-input').val();
			var result_per_page = $('form.download-search').find('.download-input').attr('data-per-page');
			
			download_search(page_id, search_input, result_per_page );
		});
		
		function download_search(page_id, search_input, result_per_page ){
			$.ajax({
				url: kiesObject.ajaxurl + '?action=downloadSearch',
				xhrFields: {
					withCredentials: true
				},
				data: { page: page_id, per_page : result_per_page, search_input: search_input, security: kiesObject.ajax_nonce},
				type: 'POST',
				datatype: 'HTML',
				beforeSend: function () {
					$('.search-wrap .section-link .load-more-gif').show();
				},
				success: function (data) {
					$('.search-wrap .section-link .load-more-gif').hide();
					var is_last = data.search("last-page");
					var newHtml = $.parseHTML(data);
					
						//var html_first = '<div class="space-area"><div class="four-col">'+newHtml+'</div></div>';
						//$('.download-element-wrap').html('');
						//$('.download-element-wrap').append(newHtml);
					$('.search-wrap .four-col').append(newHtml);
					$('.space-area').remove();
					$('.search-wrap ').find('h2').html('').html('Search For : '+search_input);
					$('.search-wrap ').show();
					page_id = parseInt(page_id)+1;
					$('form.download-search .download-input').attr('data-page', page_id)
					$('.space-area a.load-more-search').attr('data-page', page_id);
					
					
					if(data.indexOf('no download found') != -1 || is_last != -1 || data == '' ){
						$('.search-wrap a.load-more-search').hide();
					}else{
						$('.search-wrap a.load-more-search').show();
					}
				}
			});
		}
	}
	
	if( $('body').hasClass('page-template-template-contact') ){
		$('.gform_body ul li.wrap-left').wrapAll('<div class="col-left"></div>');
		$('.gform_body ul li.wrap-right').wrapAll('<div class="col-right"></div>');
		
		$('.gform_footer input[type="submit"]').wrap('<div class="button-element align-right"></div>');
		$('.gform_footer input[type="submit"]').addClass('btn');
		$('.gform_footer input[type="submit"]').addClass('btn-white');
		$('.gform_footer input[type="submit"]').addClass('btn-white-shadow');
		
	}
});