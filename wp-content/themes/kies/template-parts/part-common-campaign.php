<div class="common-block bg-block campiagn-block" style="background-color: rgba(0,185,230,.3);">
    <div class="container">
    	<?php 
		$disable_class = '';
		$get_current_term = get_queried_object();
		$front_page_id = get_option( 'page_on_front' );
		if( get_field( 'section_title_campaign', $front_page_id ) ){
			$section_title = get_field( 'section_title_campaign', $front_page_id );
		} else {
			$section_title = '';
		}
		?>
        <?php
        if( ! empty( $section_title ) ){
        ?>
        <div class="section-title text-center">
            <h2><?php echo esc_html( $section_title ); ?></h2>
        </div>
        <?php } ?>

        <?php include(locate_template('template-parts/part-campaign-list.php')); ?>

    </div>
</div>
