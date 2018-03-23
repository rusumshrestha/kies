<?php
/**
 * The template for displaying all pages
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site may use a
 * different template.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package kies
 */

get_header();
?>
<?php  while ( have_posts() ) { the_post(); ?>
<div class="banner-wrapper">
	<?php
    $get_banner_image = wp_get_attachment_image_src( get_post_thumbnail_id( get_the_ID() ), 'full' ); 
    if( is_array($get_banner_image) && !empty( $get_banner_image[0] ) ){
        $banner_image = $get_banner_image[0];
    } else {
        $banner_image = get_template_directory_uri() . '/dist/images/banner-img.png';
    }
    ?>
    <div class="banner-image" style="background-image: url('<?php echo esc_url( $banner_image ); ?>'); ">
        <div class="container">
            <div class="banner-content">
                <?php the_content();?>
            </div>
        </div>
    </div>
</div>
<main>
    <div class="bg-block bg-blue">
        <div class="container">
        	<?php
			if( get_field('image_subContentSection') ){
				$sub_content_image = get_field('image_subContentSection');
			?>
            <div class="icon-block">
            	<?php
				if( is_array($sub_content_image) && ! empty( $sub_content_image['url'] ) ){
				?>
                <img src="<?php echo esc_url($sub_content_image['url']); ?>" alt="">
                <?php } ?>
            </div>
            <?php
			}
			?>
            <div class="content-wrapper">
            	<?php
				if( get_field('section_title_subContentSection') ){
				?>
                <div class="section-title">
                    <h2><?php the_field('section_title_subContentSection'); ?></h2>
                </div>
                <?php } ?>
                <div class="content">
                	<?php the_field('section_description_subContentSection'); ?>
                    <?php
					if( get_field('more_link_subContentSection') ){
						$sub_content_more = get_field('more_link_subContentSection');
						if( array_key_exists('title', $sub_content_more) && ! empty($sub_content_more['title']) ){
							$more_title = $sub_content_more['title'];
						} else{
							$more_title = 'BEKIJK DE CAMPAGNEMIDDELEN';
						}
						if( array_key_exists('url', $sub_content_more) && ! empty($sub_content_more['url']) ){
							$more_url = $sub_content_more['url'];
						} else{
							$more_url = '#';
						}
						if( array_key_exists('target', $sub_content_more) && ! empty($sub_content_more['target']) ){
							$more_target = 'target="'.$sub_content_more['target'].'"';
						} else{
							$more_target = '';
						}
					?>
                    <a href="<?php echo esc_url($more_url);?>" class="btn btn-white" <?php echo esc_attr($more_target); ?> title="<?php echo esc_attr($more_title); ?>">
                    	<?php echo esc_html($more_title); ?>
                    </a>
                    <?php } ?>
                </div>
                <div class="bg-widget two-col">
                	<?php
					if( get_field('2_column_sub_subContentSection') ){
						foreach( get_field('2_column_sub_subContentSection') as $col_2_sub_content ){
					?>
                            <div class="col">
                            	<?php if( !empty($col_2_sub_content['title_2col_subContentSection']) ){?>
                                <h3><?php echo $col_2_sub_content['title_2col_subContentSection']; ?></h3>
                                <?php } ?>
                                <?php if( !empty($col_2_sub_content['description_2col_subContentSection']) ){?>
                                <div class="link-list">
                                	<?php echo $col_2_sub_content['description_2col_subContentSection']; ?>
                                </div>
                                <?php } ?>
                            </div>
                    <?php
						}
                    }
					?>
                </div>
            </div>
        </div>
    </div>
    
    <?php
	$col3_bg_img = '';
	if( get_field('section_bg_3col_section') ){
		$get_col3_bg_img = get_field('section_bg_3col_section');
		if( is_array($get_col3_bg_img) && ! empty($get_col3_bg_img['url']) ){
			$col3_bg_img = $get_col3_bg_img['url'];
		}
	}
	?>
	<div class="common-block bg-block bg-img bg-overlay" style="background-image: url('<?php echo esc_url($col3_bg_img);?>'); ">
        <div class="container-medium">
            <div class="section-title">
            	<?php if( get_field('sectionTitle_3col_section') ){?>
                <h2><?php the_field('sectionTitle_3col_section');?></h2>
                <?php } ?>
                <?php
				if( get_field('sectionDesc_3col_section') ){
					the_field('sectionDesc_3col_section');
				}
				?>
            </div>
            <div class="three-col banden">
            	<?php
				if( get_field('3col_rep_3col_section') ){
					foreach( get_field('3col_rep_3col_section') as $col3_content ){
				?>
                        <div class="col">
                            <?php
                            if( is_array($col3_content['img_sub_3col_section']) && ! empty($col3_content['img_sub_3col_section']['url']) ){
                            ?>
                                <div class="icon-block">
                                    <img src="<?php echo esc_url($col3_content['img_sub_3col_section']['url']); ?>" alt="">
                                </div>
                            <?php } ?>
                            <?php
                            if( array_key_exists('title_sub_3col_section', $col3_content) && ! empty($col3_content['title_sub_3col_section']) ){
                            ?>
                            <h3><?php echo $col3_content['title_sub_3col_section'];?></h3>
                            <?php } ?>
                            <div class="link-list">
								<?php
                                if( array_key_exists('desc_sub_3col_section', $col3_content) && ! empty($col3_content['desc_sub_3col_section']) ){
									echo $col3_content['desc_sub_3col_section'];
								}
                                ?>
                            </div>
                        </div>
                <?php
					}
				}
				?>
            </div>
        </div>
    </div>
    
	<div class="bg-block bg-green">
        <div class="container">
        	<?php
			if( get_field('section_title_newsSection') ){
			?>
            <div class="section-title">
                <h2><?php the_field('section_title_newsSection'); ?></h2>
            </div>
            <?php } ?>
            <?php 
			if( get_field('section_desc_newsSection') ){
				the_field('section_desc_newsSection');
			} 
			?>
            <div class="four-col news-list">
            	<?php
				if( get_field('postToShow_newsSection') == 'latest' ){
					$get_news = get_latest_post('post', 4);
				} else {
					$get_news = get_field('choosePost_newsSection');
				}
				if( is_array($get_news) ){
					foreach( $get_news as $post ){
						setup_postdata( $post ); 
						?>
						<div class="col">
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
						</div>
						<?php
					}
					wp_reset_postdata();
				}
				?>
            </div>

            <?php
			if( get_field('more_newsSection') ){
				$news_more = get_field('more_newsSection');
				if( array_key_exists('title', $news_more) && ! empty($news_more['title']) ){
					$more_title = $news_more['title'];
				} else{
					$more_title = 'AL HET NIEUWS BEKIJKEN';
				}
				if( array_key_exists('url', $news_more) && ! empty($news_more['url']) ){
					$more_url = $news_more['url'];
				} else{
					$more_url = '#';
				}
				if( array_key_exists('target', $news_more) && ! empty($news_more['target']) ){
					$more_target = 'target="'.$news_more['target'].'"';
				} else{
					$more_target = '';
				}
			?>
            <div class="section-link">
			<a href="<?php echo esc_url($more_url);?>" class="btn btn-dark-blue btn-large" <?php echo esc_attr($more_target); ?> title="<?php echo esc_attr($more_title); ?>">
				<?php echo esc_html($more_title); ?>
			</a>
            </div>
			<?php } ?>
        </div>
    </div>
</main>


	<div id="primary" class="content-area">
		<main id="main" class="site-main">

		<?php
		

			//get_template_part( 'template-parts/content', 'page' );

			// If comments are open or we have at least one comment, load up the comment template.
			if ( comments_open() || get_comments_number() ) :
				comments_template();
			endif;

		 // End of the loop.
		?>

		</main><!-- #main -->
	</div><!-- #primary -->
<?php
}
?>
<?php
get_footer();
