<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package kies
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="http://gmpg.org/xfn/11">

	<?php wp_head(); ?>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body <?php body_class(); ?>>

<header>
    <div class="top-header">
        <div class="container">
            <div class="top-nav">
                <ul>
                	<?php
					if( get_field( 'header_text', 'option' ) ){
					?>
                		<li><?php the_field( 'header_text', 'option' ); ?></li>
                    <?php
					}
					?>
                	<?php
					wp_nav_menu( array(
						'theme_location' => 'nav-top',
						'container' => false,
						'items_wrap' => '%3$s',
					) );
					?>
                </ul>
            </div>
            <div class="search">
                <div class="form-wrapper">
                    <form role="search" method="get" class="search-form" action="<?php echo esc_url( home_url( '/' ) ); ?>">
                        <div class="form-element"><input type="text" placeholder="Waar ben je naar op zoek?"></div>
                        <button type="submit" class="search-btn"><i class="ico ico-search"></i></button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="main-header">
        <div class="container">
            <div class="logo">
                <h1>
                <a href="<?php echo esc_url( home_url( '/' ) ); ?>" title="<?php bloginfo( 'name' ); ?>">
                	<?php
					if( get_field( '_site_logo', 'option') ){
						$site_logo = get_field( '_site_logo', 'option');
						$logo = $site_logo['url'];
					} else { 
						$logo = get_template_directory_uri() . '/dist/images/logo.svg';
					}
					?>
                		<img src="<?php echo esc_url( $logo ); ?>" alt="<?php bloginfo( 'name' ); ?>">
                    
                </a>
                </h1>
            </div>
            <button id="primary-nav-button" type="button">Menu</button>
            <nav class="navigation nav"  id="primary-nav">
                <?php
				wp_nav_menu( array(
					'theme_location' => 'nav-main',
					'container' => false,
				) );
				?>
            </nav>
        </div>
    </div>
</header>

