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

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'nirajdai_kies');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

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
define('AUTH_KEY',         'Kz=k[W8KJq_seN[bIi/_BGS{,rVmehD7F<XCG*iR73;0K@^Ax}9vpIGeGTQF(cuu');
define('SECURE_AUTH_KEY',  '.Rw :X2EmP5#kPBN<caypJ6/JGOmY}&e7DINIsYm]5><{y0Z~Evfxk^br_NIF?%^');
define('LOGGED_IN_KEY',    '.WM5UVu*SPi| Dbak[Ikje-X{C<#R?nux))?;<EE%4LPNL-QvVs%_p9K3A95^1]z');
define('NONCE_KEY',        'jyRP;RAJdM$-KN].rGgUjcH#*<C:TI m)g1=C8{?G#<^qnJ$|?Wt%gftgRsup]b%');
define('AUTH_SALT',        '9>q`OVfsEOwEJkwpQ%XN1:QU4>Y5utUzJcQ ])_fTd^$&KK>%]:>%lVfqcXqY)Sj');
define('SECURE_AUTH_SALT', '(doa*//! 3[di^}H)+hwIdQis`Y~WBg;gLo [Ut*G]1{paP] *8rM`iBDV*n&5li');
define('LOGGED_IN_SALT',   'ZY[)du7c];#2E4JO>ofd @_f`Ek}rc6S`qR}Veet!T@EFBb*JT`W2(M_,bLY5&0%');
define('NONCE_SALT',       'dGze$;n-U!G?#6DfNDI`%G(mZV%lp{ f>[ -5m5h8oq9]rgxm&);29edPGBsG(_v');

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
