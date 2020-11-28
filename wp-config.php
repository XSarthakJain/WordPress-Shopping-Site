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
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'sarthak' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'V%v%C4ETp8S;FTWHV?|n=|q[3II!1fz[GnN5K=TJJ,bAFAqF(|)=eC#t}hii[?@z' );
define( 'SECURE_AUTH_KEY',  '#7e02bw9fNGnCGSyj22VlCpF -rmYqG:9q^l7dQq:i^I1m1l$+BO4&ln0nd>{UC:' );
define( 'LOGGED_IN_KEY',    '~ldJ}z?&}LXrg8:fAfUmqJC~kx:)I|R(Wy>T(O*x] [LF[axd+KkzmZJz)iz{hi$' );
define( 'NONCE_KEY',        '.8Fw7{[#Yn9CM$Uwa7^3;/* h3(j,B/rfViYF{qMl{N.:#`AX%D4wN3kF7/RAhxz' );
define( 'AUTH_SALT',        ' Hu<J++CU]3}1G#N?o/O5WCxh]5hmrm2sf!Est)YDI4,&vtR-F^T+3-1$o6lx%cT' );
define( 'SECURE_AUTH_SALT', 'JJ2Z3(ls=>|cz1y f8!jJ5!:Y_-~W~iE}SG,8+FC1,3%YKJS3,1vcZV%<ZOBZhY:' );
define( 'LOGGED_IN_SALT',   'SL +]>QiPvfBn>D;}V1_<HQN#{.#GRD;yTYO~G;tHU$&3vq_6XX3)i$AQ0<NE[Kb' );
define( 'NONCE_SALT',       'ex?Wo2d^nV0ch~a;;)k]Knh[[l6hzL>Mr:aDq~J2)X]c-RyKMBv2>Wbu2eQS0p)<' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

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
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
