<?php
/**
 * Template Name: Campaign Listing Page
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
$get_campaign = get_terms( 'campaign', array(
    'hide_empty' => false,
) );
if( is_array($get_campaign) && ! empty( $get_campaign ) ){
	foreach( $get_campaign as $campaign ){
		$campaign_img = get_field('image_campaign', $campaign->taxonomy . '_' . $campaign->term_id);
		$campaign_color = get_field( 'chooseColor_campaign', $campaign->taxonomy . '_' . $campaign->term_id );
		if( $campaign_color == 'bg-blue' ){
			$campaign_poly = get_template_directory_uri() . '/dist/images/poly-small-1.svg';
		} elseif( $campaign_color == 'bg-green' ){
			$campaign_poly = get_template_directory_uri() . '/dist/images/poly-small-2.svg';
		} elseif( $campaign_color == 'bg-orange' ){
			$campaign_poly = get_template_directory_uri() . '/dist/images/poly-small-3.svg';
		} else {
			$campaign_poly = get_template_directory_uri() . '/dist/images/poly-small-4.svg';
		}
		?>
        
        <div class="bg-block <?php the_field( 'chooseColor_campaign', $campaign->taxonomy . '_' . $campaign->term_id ); ?>">
            <div class="svg-img">
                <img src="<?php echo esc_url( $campaign_poly );?>" alt="<?php echo esc_attr( $campaign->name ); ?>" class="svg">
            </div>
            <div class="container">
                <div class="icon-block">
                    <?php
					if( is_array( $campaign_img ) ){
					?>
						<img src="<?php echo $campaign_img['url'];?>" alt="<?php echo $campaign->name; ?>">
					<?php } ?>
                </div>
                <div class="content-wrapper">
                    <div class="section-title">
                        <h2>
							<?php echo esc_html( $campaign->name ); ?>
                            <?php
							if( get_field( 'period_campaignDesc', $campaign->taxonomy . '_' . $campaign->term_id ) ){
							?>
                        	<span><?php echo esc_html( get_field( 'period_campaignDesc', $campaign->taxonomy . '_' . $campaign->term_id ) ); ?></span>
                            <?php } ?>
                        </h2>
                    </div>
                    <div class="content">
                        <?php echo get_field( 'description_campaignDesc', $campaign->taxonomy . '_' . $campaign->term_id ); ?>
                        <div class="button-element"><a href="<?php echo esc_html( get_term_link( $campaign ) ); ?>" class="btn btn-white-shadow" title="<?php echo esc_attr( $campaign->name ); ?>">BEKIJK DE CAMPAGNEMIDDELEN</a></div>
                    </div>
                    <div class="bg-widget two-col">
                        <div class="col">
                        </div>
                        <div class="col">
                        	<?php
							if( get_field( 'sub_content_title_campaignDesc', $campaign->taxonomy . '_' . $campaign->term_id ) ){
							?>
                            	<h3><?php echo esc_html( get_field( 'sub_content_title_campaignDesc', $campaign->taxonomy . '_' . $campaign->term_id ) ); ?></h3>
                            <?php
							}
							?>
                            <?php
							if( get_field( 'sub_content_description_campaignDesc', $campaign->taxonomy . '_' . $campaign->term_id ) ){
							?>
                            <div class="link-list">
                                <?php echo get_field( 'sub_content_description_campaignDesc', $campaign->taxonomy . '_' . $campaign->term_id ); ?>
                            </div>
                            <?php
							}
							?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <?php
	}
}
?>
<?php
	get_template_part( 'template-parts/part', 'footer-newsletter' );
?>
</main>
<?php
get_footer();
