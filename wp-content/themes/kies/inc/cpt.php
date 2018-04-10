<?php
// CREATE CUSTOM POST TYPE
add_action( 'init', 'pjnCreatePostType' );

function pjnCreatePostType(){

	$postTypes = array(
		array(
		  'slug'         	=> 'download',
		  'singular_name'  	=> 'Download',
		  'plural_name'  	=> 'Downloads',
		  'post_type'    	=> 'download',
		  'supports'		=> array( 'title', 'editor', 'excerpt', 'thumbnail'),
		  'has_single'		=> false
		),
		array(
		  'slug'         	=> 'news',
		  'singular_name'  	=> 'News',
		  'plural_name'  	=> 'News',
		  'post_type'    	=> 'news',
		  'supports'		=> array( 'title', 'editor', 'excerpt', 'thumbnail'),
		  'has_single'		=> true
		),
	
	  );
	  
	  foreach($postTypes as $postType){
		  $args = array(
				'labels' => array(
							'name' => $postType['plural_name'],
							'singular_name' => $postType['singular_name'],
							'add_new' => 'Add New',
							'add_new_item' => 'Add New '.$postType['singular_name'],
							'edit_item' => 'Edit '.$postType['singular_name'],
							'new_item' => 'New '.$postType['singular_name'],
							'all_items' => 'All '.$postType['plural_name'],
							'view_item' => 'View '.$postType['singular_name'],
							'search_items' => 'Search '.$postType['plural_name'],
							'not_found' =>  'No '.$postType['plural_name'].' found',
							'not_found_in_trash' => 'No '.$postType['plural_name'].' found in Trash',
							'menu_name' => $postType['plural_name']
						),
				'public' => true,
				'publicly_queryable' => $postType['has_single'],
				'show_ui' => true, 
				'show_in_menu' => true,
				'query_var' => $postType['has_single'],
				'rewrite' => array( 'slug' => $postType['slug'] ),
				'capability_type' => 'post',
				'has_archive' => true, 
				'hierarchical' => true,
				'menu_position' => null,
				'supports' => $postType['supports'], 
			);
		  register_post_type( $postType['post_type'], $args);
	  }
}


// CUSTOM TAXONOMY

add_action( 'init', 'registerTaxonomy', 0 );

function registerTaxonomy() {
		
	$postTaxonomies = array(
		array(
		  'slug'         	=> 'download-category',
		  'singular_name'  	=> 'Category',
		  'name'  			=> 'Category',
		  'post_type'    	=> 'download'
		),
		array(
		  'slug'         	=> 'campaign',
		  'singular_name'  	=> 'Campaign',
		  'name'  			=> 'Campaign',
		  'post_type'    	=> 'download'
		),
	
	  );
	

	foreach($postTaxonomies as $postTaxonomy){
	register_taxonomy($postTaxonomy['slug'], $postTaxonomy['post_type'], array(
		'hierarchical' => true,
		'show_admin_column' => true,
		'show_ui'           => true,
		'labels' => array(
			'name' => _x( $postTaxonomy['name'], $postTaxonomy['name'] ),
			'singular_name' => _x( $postTaxonomy['singular_name'], $postTaxonomy['singular_name'] ),
			'search_items' =>  __( 'Search '.$postTaxonomy['name'] ),
			'all_items' => __( 'All '.$postTaxonomy['name'] ),
			'parent_item' => __( 'Parent '.$postTaxonomy['name'] ),
			'parent_item_colon' => __( 'Parent '.$postTaxonomy['name'] ),
			'edit_item' => __( 'Edit '.$postTaxonomy['name'] ),
			'update_item' => __( 'Update '.$postTaxonomy['name'] ),
			'add_new_item' => __( 'Add New '.$postTaxonomy['name'] ),
			'new_item_name' => __( 'New '.$postTaxonomy['name'].' Name' ),
			'menu_name' => __( $postTaxonomy['name'] ),
		),

		'rewrite' => array(
			'slug' => $postTaxonomy['slug'],
			'with_front' => false,
			'hierarchical' => true,
			
		),
	));
	}
	
	
	
}

?>