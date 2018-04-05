<div class="common-block bg-block campiagn-block" style="background-color: rgba(0,185,230,.3);">
    <div class="container">
    	<?php 
		$disable_class = '';
		$get_current_term = get_queried_object();
		if( is_tax() ){
			$front_page_id = get_option( 'page_on_front' );
			if( get_field( 'section_title_campaign', $front_page_id ) ){
				$section_title = get_field( 'section_title_campaign', $front_page_id );
			} else {
				$section_title = '';
			}
			
		} else {
			if( get_field( 'section_title_campaign' ) ){
				$section_title = get_field( 'section_title_campaign' );
			} else {
				$section_title = '';
			}
		}
		?>
        <?php
        if( ! empty( $section_title ) ){
        ?>
        <div class="section-title text-center">
            <h2><?php echo esc_html( $section_title ); ?></h2>
        </div>
        <?php } ?>
        
        
        <?php
        $get_campaign = get_terms( array(
            'taxonomy' => 'campaign',
            'hide_empty' => false,
        ) );
        if( is_array( $get_campaign ) ){
        ?>
            <div class="four-col campiagn-list">
                <?php
                foreach( $get_campaign as $campaign ){
                    $campaign_img = get_field('image_campaign', $campaign->taxonomy . '_' . $campaign->term_id);
					if( is_tax() ){
						if( $campaign->term_id == $get_current_term->term_id ){
							$disable_class = 'disabled-block';
						} else {
							$disable_class = '';
						}
					}
                ?>
                    <div class="col <?php the_field( 'chooseColor_campaign', $campaign->taxonomy . '_' . $campaign->term_id ); ?> <?php echo esc_attr( $disable_class ); ?>">
                        <div class="section-title">
                            <h3><?php echo $campaign->name; ?></h3>
                            <p><?php the_field( 'subTitle_campaign', $campaign->taxonomy . '_' . $campaign->term_id ); ?></p>
                        </div>
                        <div class="img-block">
                            <?php
                            if( is_array( $campaign_img ) ){
                            ?>
                            <img src="<?php echo $campaign_img['url'];?>" alt="<?php echo $campaign->name; ?>">
                            <?php } ?>
                        </div>
                        <div class="link-block">
                            <a href="<?php echo get_term_link( $campaign ); ?>" title="BEKIJK DEZE CAMPAGNE">BEKIJK DEZE CAMPAGNE <i class="ico ico-arrow-right"></i></a>
                        </div>
                    </div>
                <?php } ?>
                
                
            </div>
        <?php } ?>
    </div>
</div>