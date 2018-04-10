<?php
/**
 * The template for displaying archive pages
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package kies
 */

get_header();

$download_category = get_queried_object();
/*
$campaign_img = get_field('image_campaign', $campaign->taxonomy . '_' . $campaign->term_id);
$campaign_color = get_field( 'chooseColor_campaign', $campaign->taxonomy . '_' . $campaign->term_id );
if( $campaign_color == 'bg-blue' ){
	$campaign_poly = get_template_directory_uri() . '/dist/images/poly-large-1.svg';
} elseif( $campaign_color == 'bg-green' ){
	$campaign_poly = get_template_directory_uri() . '/dist/images/poly-large-2.svg';
} elseif( $campaign_color == 'bg-orange' ){
	$campaign_poly = get_template_directory_uri() . '/dist/images/poly-large-3.svg';
} else {
	$campaign_poly = get_template_directory_uri() . '/dist/images/poly-large-4.svg';
}
	*/	


?>
<main>

<div class="common-block bg-block bg-img"   style="background-color: rgba(0,185,230,.15);">
				<div class="container">
					<div class="section-title text-center">
						<h2><?php echo esc_html( $download_category->name ); ?></h2>
						<p><?php echo esc_html( $download_category->description ); ?></p>
					</div>
					<div class="btn-list centered-list">
						<ul>
							<li><a href="#" class="btn btn-small btn-maroon" title="BANDENSPANNING">BANDENSPANNING</a></li>
							<li><a href="#" class="btn btn-small btn-sky-blue" title="BESTE BAND">BESTE BAND</a></li>
							<li><a href="#" class="btn btn-small btn-orange" title="VEILIGHEID">VEILIGHEID</a></li>
							<li><a href="#" class="btn btn-small btn-yellow" title="BANDENLABEL">BANDENLABEL</a></li>
							<li><a href="#" class="btn btn-small btn-green" title="ZOMERBANDEN">ZOMERBANDEN</a></li>
							<li><a href="#" class="btn btn-small btn-dark-blue" title="WINTERBANDEN">WINTERBANDEN</a></li>
						</ul>
					</div>
					<div class="search center-content">
						<div class="form-wrapper">
							<form action="#">
								<div class="form-element">
									<select>
										<option>1</option>
										<option>1</option>
										<option>1</option>
										<option>1</option>
									</select>
								</div>
							</form>
						</div>
					</div>
					<ul class="four-col">
                    	<?php
						$get_download = get_post_by_term('download', -1, $download_category->taxonomy, $download_category->term_id);
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
								<li class="news-list">
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
								</li>
						<?php
							}
							wp_reset_postdata();
						}
						?>
					</ul>
				</div>
			</div>
            
    <?php get_template_part( 'template-parts/part', 'common-campaign' ); ?>
</main>
<?php
get_footer();
