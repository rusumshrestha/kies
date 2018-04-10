<?php
$get_campaign = get_terms( array(
	'taxonomy' => 'campaign',
	'hide_empty' => false,
) );
if( is_array( $get_campaign ) ){
?>
	<div class="four-col">
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
			<div class="col campiagn-list <?php the_field( 'chooseColor_campaign', $campaign->taxonomy . '_' . $campaign->term_id ); ?> <?php echo esc_attr( $disable_class ); ?>">
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
