<?php
/**
 * The template for displaying all single posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package kies
 */

get_header();
?>

<?php
$featured_img = wp_get_attachment_image_src( get_post_thumbnail_id( get_the_ID() ), 'full' );
if( is_array($featured_img) && ! empty($featured_img[0]) ){
	?>
    <div class="banner-wrapper">
        <div class="banner-image" style="background-image: url('<?php echo esc_url( $featured_img[0] ); ?>'); "></div>
    </div>
    <?php
}
?>
<main>
	<?php
	while ( have_posts() ) {
		the_post();
	?>
    <div class="common-block ">
        <div class="container-medium">
            <div class="section-block">
                <div class="date"><?php $post_date = get_the_date( 'd F Y' ); echo $post_date;?></div>
                <div class="single">
                    <h2><?php the_title(); ?></h2>
                    <?php the_content();?>
                </div>
            </div>
            <div class="social-share">
                <h3>DEEL DEZE PAGINA</h3>
                <ul>
                    <li>
                        <a href="#" title="Facebook">
                            <i class="ico ico-facebook"></i>
                        </a>
                    </li>
                    <li>
                        <a href="#" title="Twitter">
                            <i class="ico ico-twitter"></i>
                        </a>
                    </li>
                    <li>
                        <a href="#" title="Vimeo">
                            <i class="ico ico-vimeo"></i>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <?php
	}
	?>
	<?php get_template_part( 'template-parts/part', 'common-campaign' ); ?>
</main>


<?php
get_footer();
