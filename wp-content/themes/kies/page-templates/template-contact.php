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
?>
    <div class="common-block bg-block bg-img"   style="background-image: url('dist/images/img-3.png'); background-color: rgba(0,185,230,.15);">
        <div class="container-medium">
            <div class="section-contactinfo">
                <div class="section-title">
                    <div class="contentinfo-left">
                        <img src="dist/images/logo.svg" alt="kies">
                    </div>
                    <div class="contentinfo-right">
                        <p>Kies de Beste Band is een initiatief van XXXX. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut commodo urna vel mauris tempus, sit amet lacinia nisi interdum. Pellentesque luctus suscipit purus, in iaculis tellus fringilla ut. Suspendisse eu sodales sem. Vestibulum vestibulum scelerisque lectus eu consectetur. Sed commodo dolor vel libero ultrices condimentum. Aenean turpis tellus, tincidunt et magna luctus, ultrices malesuada lectus. Aliquam a vehicula lacus, ut porta arcu. Integer enim mauris, laoreet quis urna tempor, tincidunt dapibus nunc.</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-small">
            <div class="form-wrapper contact-form">
                <div class="section-title text-center">
                    <h2>CONTACT</h2>
                </div>
                <form method="post" action="#">
                    <div class="col-left">
                        <div class="form-element">
                            <label>Name *</label>
                            <input type="text" name="name" placeholder="Name">
                        </div>
                        <div class="form-element">
                            <label>Bedrijfsnaam</label>
                            <input type="text" name="Bedrijfsnaam" placeholder="Bedrijfsnaam">
                        </div>
                        <div class="form-element">
                            <label>E-mailadres *</label>
                            <input type="text" name="email" placeholder="E-mailadres">
                        </div>
                        <div class="form-element">
                            <label>Telefoonnummer</label>
                            <input type="text" name="Telefoonnummer" placeholder="Telefoonnummer">
                        </div>
                    </div>
                    <div class="col-right">
                        <div class="form-element">
                            <label>Bericht *</label>
                            <textarea name="Bericht" placeholder="Uw bericht of vraag"></textarea>
                        </div>
                        <span class="form-msg">Wilt u minimaal de velden gemarkeerd met een * invullen?</span>
                        <div class="button-element align-right">
                            <button type="submit" class="btn btn-white btn-white-shadow">VERSTUREN</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>	
    <div class="common-block bg-block bg-img" style="background-image: url('<?php echo esc_url( $download_bg_img ); ?>'); background-color: rgba(0,185,230,.15);">
        <div class="container">
            <div class="section-title text-center">
                <h2><?php the_title(); ?></h2>
                <?php the_content();?>
            </div>
            <div class="search center-content">
                <div class="form-wrapper">
                    <form action="#">
                        <div class="form-element"><input type="text" placeholder="Waar ben je naar op zoek?"></div>
                    </form>
                </div>
            </div>
        </div>
    </div>
<?php
}
?>

</main>
<?php
get_footer();
