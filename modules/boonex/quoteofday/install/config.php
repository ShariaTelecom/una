<?php
/**
 * Copyright (c) UNA, Inc - https://una.io
 * MIT License - https://opensource.org/licenses/MIT
 *
 * @defgroup    Quote of the Day
 * @ingroup     UnaModules
 *
 * @{
 */

$aConfig = array(

    /**
     * Main Section.
     */
    'type' => BX_DOL_MODULE_TYPE_MODULE,
    'name' => 'bx_quoteofday',
    'title' => 'Quote of the Day',
    'note' => 'Quote of the Day module.',
    'version' => '1.0.0',
    'vendor' => 'BoonEx',
	'help_url' => 'http://feed.una.io/?section={module_name}',

    'compatible_with' => array(
        '9.0.0-RC4'
    ),

    /**
     * 'home_dir' and 'home_uri' - should be unique. Don't use spaces in 'home_uri' and the other special chars.
     */
    'home_dir' => 'boonex/quoteofday/',
    'home_uri' => 'quoteofday',

    'db_prefix' => 'bx_quoteofday_',
    'class_prefix' => 'BxQuoteofday',

    /**
     * Category for language keys.
     */
    'language_category' => 'Quoteofday',

    /**
     * Installation/Uninstallation Section.
     */
    'install' => array(
        'execute_sql' => 1,
        'update_languages' => 1,
        'clear_db_cache' => 1,
    ),
    'uninstall' => array (
    	'execute_sql' => 1,
        'update_languages' => 1,
        'clear_db_cache' => 1,
    ),
    'enable' => array(
        'execute_sql' => 1,
        'clear_db_cache' => 1,
    ),
    'enable_success' => array(
        'clear_db_cache' => 1,
    ),
    'disable' => array (
        'execute_sql' => 1,
        'clear_db_cache' => 1,
    ),
    'disable_failed' => array (
        'clear_db_cache' => 1,
    ),

    /**
     * Dependencies Section
     */
    'dependencies' => array(),

    

);

/** @} */
