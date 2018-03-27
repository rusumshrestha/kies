<?php
/**
 * kies functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package kies
 */

if ( ! function_exists( 'kies_setup' ) ) :
	/**
	 * Sets up theme defaults and registers support for various WordPress features.
	 *
	 * Note that this function is hooked into the after_setup_theme hook, which
	 * runs before the init hook. The init hook is too late for some features, such
	 * as indicating support for post thumbnails.
	 */
	function kies_setup() {
		/*
		 * Make theme available for translation.
		 * Translations can be filed in the /languages/ directory.
		 * If you're building a theme based on kies, use a find and replace
		 * to change 'kies' to the name of your theme in all the template files.
		 */
		load_theme_textdomain( 'kies', get_template_directory() . '/languages' );

		// Add default posts and comments RSS feed links to head.
		add_theme_support( 'automatic-feed-links' );

		/*
		 * Let WordPress manage the document title.
		 * By adding theme support, we declare that this theme does not use a
		 * hard-coded <title> tag in the document head, and expect WordPress to
		 * provide it for us.
		 */
		add_theme_support( 'title-tag' );

		/*
		 * Enable support for Post Thumbnails on posts and pages.
		 *
		 * @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
		 */
		add_theme_support( 'post-thumbnails' );

		// This theme uses wp_nav_menu() in one location.
		register_nav_menus( array(
			'nav-top' => esc_html__( 'Top Nav', 'kies' ),
			'nav-main' => esc_html__( 'Main Nav', 'kies' ),
			'nav-footer' => esc_html__( 'Footer Nav', 'kies' ),
		) );

		/*
		 * Switch default core markup for search form, comment form, and comments
		 * to output valid HTML5.
		 */
		add_theme_support( 'html5', array(
			'search-form',
			'comment-form',
			'comment-list',
			'gallery',
			'caption',
		) );

		// Set up the WordPress core custom background feature.
		add_theme_support( 'custom-background', apply_filters( 'kies_custom_background_args', array(
			'default-color' => 'ffffff',
			'default-image' => '',
		) ) );

		// Add theme support for selective refresh for widgets.
		add_theme_support( 'customize-selective-refresh-widgets' );

		/**
		 * Add support for core custom logo.
		 *
		 * @link https://codex.wordpress.org/Theme_Logo
		 */
		add_theme_support( 'custom-logo', array(
			'height'      => 250,
			'width'       => 250,
			'flex-width'  => true,
			'flex-height' => true,
		) );
	}
endif;
add_action( 'after_setup_theme', 'kies_setup' );

/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function kies_content_width() {
	// This variable is intended to be overruled from themes.
	// Open WPCS issue: {@link https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards/issues/1043}.
	// phpcs:ignore WordPress.NamingConventions.PrefixAllGlobals.NonPrefixedVariableFound
	$GLOBALS['content_width'] = apply_filters( 'kies_content_width', 640 );
}
add_action( 'after_setup_theme', 'kies_content_width', 0 );

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function kies_widgets_init() {
	register_sidebar( array(
		'name'          => esc_html__( 'Footer Widget 1', 'kies' ),
		'id'            => 'footer-widget-1',
		'description'   => esc_html__( 'Add widgets here.', 'kies' ),
		'before_widget' => '<div class="foot-menu">',
		'after_widget'  => '</div>',
		'before_title'  => '<h3 class="widget-title">',
		'after_title'   => '</h3>',
	) );
	register_sidebar( array(
		'name'          => esc_html__( 'Footer Widget 2', 'kies' ),
		'id'            => 'footer-widget-2',
		'description'   => esc_html__( 'Add widgets here.', 'kies' ),
		'before_widget' => '<div class="foot-menu">',
		'after_widget'  => '</div>',
		'before_title'  => '<h3 class="widget-title">',
		'after_title'   => '</h3>',
	) );
	register_sidebar( array(
		'name'          => esc_html__( 'Footer Widget 3', 'kies' ),
		'id'            => 'footer-widget-3',
		'description'   => esc_html__( 'Add widgets here.', 'kies' ),
		'before_widget' => '<div class="foot-menu">',
		'after_widget'  => '</div>',
		'before_title'  => '<h3 class="widget-title">',
		'after_title'   => '</h3>',
	) );
	register_sidebar( array(
		'name'          => esc_html__( 'Footer Widget 4', 'kies' ),
		'id'            => 'footer-widget-4',
		'description'   => esc_html__( 'Add widgets here.', 'kies' ),
		'before_widget' => '<div class="foot-menu">',
		'after_widget'  => '</div>',
		'before_title'  => '<h3 class="widget-title">',
		'after_title'   => '</h3>',
	) );
	register_sidebar( array(
		'name'          => esc_html__( 'Footer Widget 5', 'kies' ),
		'id'            => 'footer-widget-5',
		'description'   => esc_html__( 'Add widgets here.', 'kies' ),
		'before_widget' => '<div class="foot-menu">',
		'after_widget'  => '</div>',
		'before_title'  => '<h3 class="widget-title">',
		'after_title'   => '</h3>',
	) );
	register_sidebar( array(
		'name'          => esc_html__( 'Footer Widget 6', 'kies' ),
		'id'            => 'footer-widget-6',
		'description'   => esc_html__( 'Add widgets here.', 'kies' ),
		'before_widget' => '<div class="foot-menu">',
		'after_widget'  => '</div>',
		'before_title'  => '<h3 class="widget-title">',
		'after_title'   => '</h3>',
	) );
	register_sidebar( array(
		'name'          => esc_html__( 'Footer Widget 7', 'kies' ),
		'id'            => 'footer-widget-7',
		'description'   => esc_html__( 'Add widgets here.', 'kies' ),
		'before_widget' => '<div class="foot-menu">',
		'after_widget'  => '</div>',
		'before_title'  => '<h3 class="widget-title">',
		'after_title'   => '</h3>',
	) );
	
}
add_action( 'widgets_init', 'kies_widgets_init' );

/**
 * Enqueue scripts and styles.
 */
function kies_scripts() {
	wp_enqueue_style( 'kies-font', 'https://fonts.googleapis.com/css?family=Open+Sans:300,400,400i,600,700,800' );
	wp_enqueue_style( 'kies-range-slider', get_template_directory_uri() .'/dist/css/rangeslider.css' );
	wp_enqueue_style( 'kies-main', get_template_directory_uri() .'/dist/css/style.css' );
	wp_enqueue_style( 'kies-style', get_stylesheet_uri() );
	
	wp_enqueue_script( 'kies-navigation', get_template_directory_uri() . '/js/navigation.js', array(), '20151215', true );
	wp_enqueue_script( 'kies-skip-link-focus-fix', get_template_directory_uri() . '/js/skip-link-focus-fix.js', array(), '20151215', true );

	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
	wp_enqueue_script( 'kies-jquery', get_template_directory_uri() . '/dist/js/jquery.js', array(), '20151215', true );
	wp_enqueue_script( 'kies-app', get_template_directory_uri() . '/dist/js/app.js', array(), '20151215', true );
}
add_action( 'wp_enqueue_scripts', 'kies_scripts' );

/**
 * Implement the Custom Header feature.
 */
require get_template_directory() . '/inc/custom-header.php';

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Functions which enhance the theme by hooking into WordPress.
 */
require get_template_directory() . '/inc/template-functions.php';

/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';
require get_template_directory() . '/inc/cpt.php';
/**
 * Load Jetpack compatibility file.
 */
if ( defined( 'JETPACK__VERSION' ) ) {
	require get_template_directory() . '/inc/jetpack.php';
}
add_image_size( 'thumb-444x250', 444, 250, true );
function pr($data){
	echo '<pre>';
	print_r($data);
	echo '</pre>';
}

if( function_exists('acf_add_options_page') ) {

	acf_add_options_page(array(
		'page_title' 	=> 'Theme Option',
		'menu_title'	=> 'Theme Option',
		'menu_slug' 	=> 'theme-option',
		'capability'	=> 'edit_posts',
		'parent_slug' 	=> '',
		'position' 		=> false,
		'icon_url' 		=> false,
		'redirect'		=> false
		));
}

function kies_svg_mime_types($mimes) {
  $mimes['svg'] = 'image/svg+xml';
  return $mimes;
}
add_filter('upload_mimes', 'kies_svg_mime_types');

function kies_svg_thumb_display() {
  echo '<style>
    td.media-icon img[src$=".svg"], img[src$=".svg"].attachment-post-thumbnail { 
      width: 100% !important; 
      height: auto !important; 
    }
  </style>';
}
add_action('admin_head', 'kies_svg_thumb_display');

function content($my_content, $limit) {
  $content = explode(' ', $my_content, $limit);
  if (count($content)>=$limit) {
    array_pop($content);
    $content = implode(" ",$content).'';
  } else {
    $content = implode(" ",$content);
  }	
  $content = preg_replace('/\[.+\]/','', $content);
  $content = apply_filters('the_content', $content); 
  $content = str_replace(']]>', ']]&gt;', $content);
  return $content;
}

function get_latest_post($postType, $postPerPage) {
	global $paged;
	$args = array(
		'post_type' => $postType,
		'orderby' => 'post_date',
		'order' => 'ASC',
		'post_status' => 'publish',
		'posts_per_page' => $postPerPage,
		);
	$query = new WP_Query( $args );
	return $query->posts;
}

function file_size_convert($bytes){
    $bytes = floatval($bytes);
        $arBytes = array(
            0 => array(
                "UNIT" => "TB",
                "VALUE" => pow(1024, 4)
            ),
            1 => array(
                "UNIT" => "GB",
                "VALUE" => pow(1024, 3)
            ),
            2 => array(
                "UNIT" => "MB",
                "VALUE" => pow(1024, 2)
            ),
            3 => array(
                "UNIT" => "KB",
                "VALUE" => 1024
            ),
            4 => array(
                "UNIT" => "B",
                "VALUE" => 1
            ),
        );

    foreach($arBytes as $arItem)
    {
        if($bytes >= $arItem["VALUE"])
        {
			
             $result =$bytes / $arItem["VALUE"];
			$result =round($result, 2).' '.$arItem["UNIT"];
            //$result = str_replace(".", "," , strval(round($result, 2)))." ".$arItem["UNIT"];
			//pr($result);
            break;
        }
    }
    return $result;
}
