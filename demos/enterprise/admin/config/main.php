<?php
$config = array(
    'projectName'           => 'admin',
    'modelName'             => 'protected',

    'import'                => array(
        'controllers.*'
    ),

    'defaultController'     => 'site',

    'debuger'               => false,
    'crash_show_sql'        => true,        // 是否显示错误sql

    'smarty'                => array(
        'is_on'             => true,    // 是否使用smarty模板
        'left_delimiter'    => '{%',
        'right_delimiter'   => '%}',
        'debugging'         => false,
        'caching'           => false,
        'cache_lifetime'    => 120,
        'compile_check'     => true,
        'template_dir'      => 'templates',
        'config_dir'        => 'templates/config',
        'cache_dir'         => 'data/templates/cache/admin',
        'compile_dir'       => 'data/templates/compile/admin'
    ),
    
    'database'              => array(
        'driver'            => 'mysql',
        'master'            => array(
            'dbhost'        => '127.0.0.1',
            'username'      => 'root',
            'password'      => '',
            'dbname'        => 'enterprise',
            'charset'       => 'utf8',
            'table_prefix'  => '',
            'pconnect'      => false
        )
    ),
    'session'=>array(
        'driver'            => 'db',
        'timeout'           => 86400
    ),
    // 'memcache'=>array(
    //     array(
    //         'host'          => 'localhost',
    //         'port'          => 11211
    //     )
    // ),
    // 'memcached'=>array(
    //     array(
    //         'host'          => 'localhost',
    //         'port'          => 11211
    //     ),
    //     array(
    //         'host'          => 'localhost',
    //         'port'          => 11211
    //     )
    // ),
    // 'redis'=>array(
    //     'master' => array(
    //         'host'          => '127.0.0.1',
    //         'port'          => 6379
    //     ),
    //     // 'slave' => array(
    //     //     array(
    //     //         'host'          => '127.0.0.1',
    //     //         'port'          => 63791
    //     //     ),
    //     //     array(
    //     //         'host'          => '127.0.0.1',
    //     //         'port'          => 63792
    //     //     )
    //     // )
    // )
);
?>