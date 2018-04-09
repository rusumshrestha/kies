<?php
/**
 * Template Name: Download Page
 * The template for displaying archive pages
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package kies
 */

get_header();
?>
<main>
<?php
while ( have_posts() ) {
	the_post();
	
	$download_bg_img = '';
	$get_download_image = wp_get_attachment_image_src( get_post_thumbnail_id( get_the_ID() ), 'large' );
	if( is_array($get_download_image) && ! empty($get_download_image[0]) ){
		$download_bg_img = $get_download_image[0];
	}
?>	
    <div class="common-block bg-block bg-img" style="background-image: url('<?php echo esc_url( $download_bg_img ); ?>'); background-color: rgba(0,185,230,.15);">
        <div class="container">
            <div class="section-title text-center">
                <h2><?php the_title(); ?></h2>
                <?php the_content();?>
            </div>
            <div class="search center-content">
                <div class="form-wrapper">
                    <form action="#" class="download-search">
                        <div class="form-element"><input type="text" data-page="1" data-per-page="<?php the_field('search_result_per_page_downloads');?>" class="download-input" placeholder="Waar ben je naar op zoek?"></div>
                    </form>
                </div>
            </div>
        </div>
    </div>
<?php
}
?>


<div class="common-block bg-block bg-img"   style="background-color: rgba(0,185,230,.15);">
    <div class="container">
		<?php
		if( get_field('show_campaign_downloads') ){
		?>
        <div class="negative-space-area">
        <div class="campiagn-block">
            <div class="section-title text-center">
            	<?php
				if(get_field('campaignTitle_downloads')){
				?>
                	<h2><?php the_field('campaignTitle_downloads');?></h2>
                <?php } ?>
                <?php
				if(get_field('campaign_desc_downloads')){
					the_field('campaign_desc_downloads');
				}
				?>
            </div>
            <?php include(locate_template('template-parts/part-campaign-list.php')); ?>
            
        </div>
        </div>
        <?php
		}
		?>
        <div class="search-wrap" style="display:none;">
        	<div class="section-title text-center">
                <h2></h2>
            </div>
            <div class="four-col">
            
            </div>
            <div class="section-link text-center">
                <a href="#" class="btn btn-blue load-more-search" data-page="1"><?php the_field('search_moreBtnTxt_downloads'); ?></a><span class="load-more-gif" style="display:none;"><img src="<?php echo get_template_directory_uri();?>/dist/images/load.gif" /></span>
            </div>
            
        </div>
        <?php
		$get_download_category = get_terms( array(
			'taxonomy' => 'download-category',
			'hide_empty' => true,
		) );
		if( is_array( $get_campaign ) ){
			foreach( $get_download_category as $download_category ){
		?>
        <div class="space-area download-<?php echo $download_category->term_id;?>-wrap">
            <div class="section-title text-center">
                <h2><?php echo $download_category->name; ?></h2>
                <p><?php echo $download_category->description; ?></p>
            </div>
            <div class="four-col">
            <?php
			$get_download = get_post_by_term('download', 4, $download_category->taxonomy, $download_category->term_id);
			if( is_array($get_download) ){
				foreach( $get_download as $post ){
					setup_postdata( $post ); 
					if( get_field('download_typ_download') == 'Video' ){
						$file_type = 'video';
					} else{
						$file_detail = get_field('upload_file_download');
						$file_url = $file_detail['url'];
						$file_name = $file_detail['filename'];
						$file_ext = explode( '.', $file_name );
						$file_ext = '.'.$file_ext[1];
						$file_size = filesize( get_attached_file( $file_detail['ID'] ) );
						$file_sizes = file_size_convert($file_size);
					}
			?>
					<div class="col">
						<div class="news-info">
							<div class="file-format">FILETYPE (<?php echo $file_ext; ?>)</div>
							<div class="date"><?php $post_date = get_the_date( 'd/m/Y' ); echo $post_date;?></div>
						</div>
						<div class="news-content">
							<h3><a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>"><?php the_title(); ?></a></h3>
							<?php
							$get_download_image = wp_get_attachment_image_src( get_post_thumbnail_id( get_the_ID() ), 'thumb-444x250' );
							if( is_array($get_download_image) && ! empty($get_download_image[0]) ){
								$download_img = $get_download_image[0];
							} else {
								$download_img = get_template_directory_uri() . '/dist/images/blank-img.png';
							}
							?>
							<div class="img-block"><img src="<?php echo esc_url($download_img); ?>" alt="<?php the_title(); ?>"></div>
							<?php
							if ( ! has_excerpt() ) {
								  echo content( get_the_content(), 20 );
							} else { 
								  echo content( get_the_excerpt(), 20 );
							}
							?>
							<a href="<?php the_permalink(); ?>" class="btn btn-small btn-sky-blue" title="<?php the_title(); ?>">BESTE BAND</a>
						</div>
						<div class="download-block">
							<a href="<?php echo $file_url;?>" target="_blank" class="pull-left"><i class="ico ico-download"></i>DOWNLOAD <?php echo $file_ext; ?> (<?php echo $file_sizes;?>)</a>
							<a href="#" title="View" class="pull-right"><i class="ico ico-eye"></i></a>
						</div>
					</div>
			<?php
				}
				wp_reset_postdata();
			}
			?>
            </div>
            <div class="section-link text-center">
                <a href="#" class="btn btn-blue load-more" data-page="1" data-id="<?php echo $download_category->term_id; ?>" title="ALLE <?php echo $download_category->name; ?>">ALLE <?php echo $download_category->name; ?></a><span class="load-more-gif" style="display:none;"><img src="<?php echo get_template_directory_uri();?>/dist/images/load.gif" /></span>
            </div>
        </div>
        <?php
			}
		}
		?>
        
    </div>
</div>

</main>
<?php
get_footer();
