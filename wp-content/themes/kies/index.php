<?php
/**
 * The main template file
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package kies
 */

get_header();

?>
<main>
    <div class="common-block bg-block bg-img"   style="background-color: rgba(0,185,230,.15);">
        <div class="container">
            <div class="section-title text-center">
            	<?php
				$page_for_posts = get_option( 'page_for_posts' ); 
				if( get_field( 'title_news', $page_for_posts ) ){
				?>
                <h2><?php the_field( 'title_news', $page_for_posts ); ?></h2>
                <?php } ?>
                <?php the_field( 'description_news', $page_for_posts ); ?>
            </div>
            <?php
			global $wp_query;
			if ( have_posts() ) {
			?>
            <ul class="four-col new-list-wrap">
            	<?php
				while ( have_posts() ) {
					the_post();
					
				?>
                <li class="news-list">
                    <div class="news-info">
                        <div class="date"><?php $post_date = get_the_date( 'd/m/Y' ); echo $post_date;?></div>
                    </div>
                    <div class="news-content">
                        <h3><a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>"><?php the_title(); ?></a></h3>
                        <?php
                        $get_news_image = wp_get_attachment_image_src( get_post_thumbnail_id( get_the_ID() ), 'thumb-444x250' );
                        if( is_array($get_news_image) && ! empty($get_news_image[0]) ){
                            $news_img = $get_news_image[0];
                        } else {
                            $news_img = get_template_directory_uri() . '/dist/images/blank-img.png';
                        }
                        ?>
                        <div class="img-block"><img src="<?php echo esc_url($news_img); ?>" alt="<?php the_title(); ?>"></div>
                        <?php
                        if ( ! has_excerpt() ) {
                              echo content( get_the_content(), 20 );
                        } else { 
                              echo content( get_the_excerpt(), 20 );
                        }
                        ?>
                        <a href="<?php the_permalink(); ?>" class="normal-link" title="<?php the_title(); ?>">LEES VERDER</a>
                    </div>
                </li>
                <?php
				}
				?>
            </ul>
            
				<?php
                if( $wp_query->max_num_pages > 1 ){
                ?>
                <div class="section-link text-center">
                    <a href="#" class="btn btn-blue load-more" data-page="1" title="ALLE DOWNLOADS">MEER NIEUWS LADEN
                    	
                     </a><span class="load-more-gif" style="display:none;"><img src="<?php echo get_template_directory_uri();?>/dist/images/load.gif" /></span>
                </div>
                <?php
                }
                ?>
            <?php } ?>
        </div>
    </div>
</main>

<?php
get_footer();
