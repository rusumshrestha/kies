<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package kies
 */

?>
<?php get_template_part( 'template-parts/part', 'footer-newsletter' ); ?>
<footer class="common-block">
    <div class="container">
        <div class="footer-menu">
        	<?php
            if ( is_active_sidebar( 'footer-widget-1' ) ) {
				dynamic_sidebar( 'footer-widget-1' );
            }
			?>
            <?php
            if ( is_active_sidebar( 'footer-widget-2' ) ) {
				dynamic_sidebar( 'footer-widget-2' );
            }
			?>
            <?php
            if ( is_active_sidebar( 'footer-widget-3' ) ) {
				dynamic_sidebar( 'footer-widget-3' );
            }
			?>
            <?php
            if ( is_active_sidebar( 'footer-widget-4' ) ) {
				dynamic_sidebar( 'footer-widget-4' );
            }
			?>
            <?php
            if ( is_active_sidebar( 'footer-widget-5' ) ) {
				dynamic_sidebar( 'footer-widget-5' );
            }
			?>
            <?php
            if ( is_active_sidebar( 'footer-widget-6' ) ) {
				dynamic_sidebar( 'footer-widget-6' );
            }
			?>
            <?php
            if ( is_active_sidebar( 'footer-widget-7' ) ) {
				dynamic_sidebar( 'footer-widget-7' );
            }
			?>
        </div>
        <?php
		if( get_field( 'add_partners_logo_1', 'option' ) ){
		?>
        <div class="partner-logo">
            <h3>PARTNERS</h3>
           	<ul class="partner-list">
            <?php
			$partner_logo_1 = get_field( 'add_partners_logo_1', 'option' );
			if( is_array( $partner_logo_1 ) ){
				foreach( $partner_logo_1 as $partner_1 ){
					?>
                    <li>
                    	<img src="<?php echo $partner_1['_site_upload_logo_1']['url']; ?>" alt="<?php bloginfo( 'name' ); ?>">
                    </li>
                    <?php
				}
			}
			?>
            </ul>
        </div>
        <?php } ?>
        <div class="bottom-footer">
            <?php
			if( get_field( 'add_partners_logo_2', 'option' ) ){
			?>
			<div class="partner-logo">
				<h3>PARTNERS</h3>
                <ul class="partner-list">
				<?php
				$partner_logo_2 = get_field( 'add_partners_logo_2', 'option' );
				if( is_array( $partner_logo_2 ) ){
					foreach( $partner_logo_2 as $partner_2 ){
						?>
                        <li>
							<img src="<?php echo esc_url( $partner_2['upload_image']['url'] ); ?>" alt="<?php bloginfo( 'name' ); ?>">
                        </li>
						<?php
					}
				}
				?>
                </ul>
			</div>
			<?php } ?>
            <div class="bottom-footer-right">
            	<?php
				if( get_field( 'social_link', 'option' ) ){
					$social_link = get_field( 'social_link', 'option' );
				?>
                <div class="social-icon">
                    <ul>
                    	<?php
						if( is_array( $social_link ) && ! empty( $social_link ) ){
							foreach( $social_link as $social ){
								?>
                                <li><a href="<?php echo esc_url( $social['social_url'] ); ?>" title="<?php bloginfo( 'name' ); ?>"><i class="ico <?php echo esc_attr( $social['social_media'] );?>"></i></a></li>
                                <?php
							}
						}
						?>
                    </ul>
                </div>
                <?php } ?>
                <div class="privacy-copyright">
                    <div class="privacy-menu">
                        <ul>
                            <?php
							wp_nav_menu( array(
								'theme_location' => 'nav-footer',
								'container' => false,
								'items_wrap' => '%3$s',
							) );
							?>
                        </ul>
                    </div>
                    <?php
					if( get_field( 'copyright_text', 'option' ) ){
					?>
                    <div class="copyright">
                        <?php the_field( 'copyright_text', 'option' );?>
                    </div>
                    <?php } ?>
                </div>
            </div>
        </div>
    </div>
</footer>

<?php wp_footer(); ?>

</body>
</html>
