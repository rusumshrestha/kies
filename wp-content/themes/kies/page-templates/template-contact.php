<?php
/**
 * Template Name: Contact Page
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
	//[gravityform id="2" title="true" description="true"]
?>
    <div class="common-block bg-block bg-img"   style="background-image: url('<?php echo $download_bg_img; ?>'); background-color: rgba(0,185,230,.15);">
        <div class="container-medium">
            <div class="section-contactinfo">
                <div class="section-title">
                    <div class="contentinfo-left">
                    	<?php
						if(get_field('contact_image')){
							$contact_img = get_field('contact_image');
							if( array_key_exists('url', $contact_img) && ! empty( $contact_img['url'] ) ){
						?>
                        		<img src="<?php echo esc_url($contact_img['url']); ?>" alt="<?php the_title()?>">
                        <?php
							}
						}
						?>
                    </div>
                    <div class="contentinfo-right">
                        <?php the_content(); ?>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-small">
            <div class="form-wrapper contact-form">
                <div class="section-title text-center">
                    <h2><?php the_title(); ?></h2>
                </div>
                <?php
				if( get_field('form_id') ){
					$form = '[gravityform id="' . get_field( 'form_id' ) . '" title="false" description="false"]';
					echo do_shortcode($form);					
				}
				
				?>
            </div>
        </div>
    </div>	
<?php
}
?>

</main>
<?php
get_footer();
