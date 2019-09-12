<?php
class DATABASE_CONFIG {

    public $default = array(
        'datasource' => 'Database/Mysql',
        'persistent' => false,
        'host' => 'db',
        'login' => 'user',
        'password' => 'pass',
        'database' => 'cake',
        'prefix' => '',
        //'encoding' => 'utf8',
    );

    public $test = array(
        'datasource' => 'Database/Mysql',
        'persistent' => false,
        'host' => 'db_test',
        'login' => 'user',
        'password' => 'pass',
        'database' => 'cake_test',
        'prefix' => '',
        //'encoding' => 'utf8',
    );
}
