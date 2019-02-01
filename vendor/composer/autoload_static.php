<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInit13b02003e13249f1e22fd9f2489d62da
{
    public static $prefixLengthsPsr4 = array (
        'P' => 
        array (
            'PHPMailer\\PHPMailer\\' => 20,
        ),
        'A' => 
        array (
            'App\\' => 4,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'PHPMailer\\PHPMailer\\' => 
        array (
            0 => __DIR__ . '/..' . '/phpmailer/phpmailer/src',
        ),
        'App\\' => 
        array (
            0 => __DIR__ . '/../..' . '/system/classes',
            1 => __DIR__ . '/../..' . '/classes/App',
        ),
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInit13b02003e13249f1e22fd9f2489d62da::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInit13b02003e13249f1e22fd9f2489d62da::$prefixDirsPsr4;

        }, null, ClassLoader::class);
    }
}