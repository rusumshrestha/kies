<?php
/**
* The base configuration for WordPress
*
* The wp-config.php creation script uses this file during the
* installation. You don't have to use the web site, you can
* copy this file to "wp-config.php" and fill in the values.
*
* This file contains the following configurations:
*
* * MySQL settings
* * Secret keys
* * Database table prefix
* * ABSPATH
*
* @link https://codex.wordpress.org/Editing_wp-config.php
*
* @package WordPress
*/


/* 
ManagedWPHosting code below 
*/

global $memcached_servers;
$memcached_servers = array('default' => array('127.0.0.1:11211'));
global $memcached_blog_id;
$memcached_blog_id = $_SERVER['SERVER_NAME'];
define('FS_METHOD','direct');

/*
Your custom code below 
*/

/*
Stop editing your custom code! Leave all code below as is 
*/



// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'kdbb001_db');

/** MySQL database username */
define('DB_USER', 'kdbb001_nof');

/** MySQL database password */
define('DB_PASSWORD', 'co6eHJh_81');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
* Authentication Unique Keys and Salts.
*
* Change these to different unique phrases!
* You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
* You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
*
* @since 2.6.0
*/
define('AUTH_KEY',         'mM7]OmT$+1(Nl(^.124 r4|wFQEs5q#>ZNfGfWs0i_[eK$tOMa-.%Q^@Xb$e&5qq');
define('SECURE_AUTH_KEY',  'tF>;a-Eyd07sz_8P(PQw9IK$2{aK(AHVUg)C4^t[R/N`qZ&]C;+WOy~!aqk?,uEP');
define('LOGGED_IN_KEY',    '=so[M}5=Ook#O9|fJ|X3/|+G>zK~wOHu^TJ.x27VYyVW;r+`=hW3l`2}z]vj?TbR');
define('NONCE_KEY',        'PoseQPvCXhQiN.d3~?(Zsjq*f_g+c~Z7<[#6P!tJX~cG+Vq6X=Q#`yRZ+nT[j@;4');
define('AUTH_SALT',        '68_+Of7@I8)uc_OUl}-D%5F ;f?aL`?T$1T6]QOh-{@{SsZqy~:$;tF+llW}WZa&');
define('SECURE_AUTH_SALT', 'ml0%hNJB|+SY`CWpU@T4#&LM}N<KGAF+8y+8T0o zJ1z6fcqV -CJ9gi,+C^,(J9');
define('LOGGED_IN_SALT',   'yvr5-4u/nbKPEk+4cV[h-U>?GTNa@Xd>ABY1rnBkhn  C)re&U8{Z[S?5!F8i!X=');
define('NONCE_SALT',       'XEa+Se7eUHZXLFm-,^`V_=Xko`G&#b^JLrvT6pRr>-wFk?WqCm9P(--yh:SxQVM*');

/**#@-*/

/**
* WordPress Database Table prefix.
*
* You can have multiple installations in one database if you give each
* a unique prefix. Only numbers, letters, and underscores please!
*/
$table_prefix  = 'ndpk_';

/**
* For developers: WordPress debugging mode.
*
* Change this to true to enable the display of notices during development.
* It is strongly recommended that plugin and theme developers use WP_DEBUG
* in their development environments.
*
* For information on other constants that can be used for debugging,
* visit the Codex.
*
* @link https://codex.wordpress.org/Debugging_in_WordPress
*/
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');

