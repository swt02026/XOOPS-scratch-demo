<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInit3d8481c1d629e37cf271a903110a22c5
{
    public static $prefixesPsr0 = array (
        'U' => 
        array (
            'Upload' => 
            array (
                0 => __DIR__ . '/..' . '/codeguy/upload/src',
            ),
        ),
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixesPsr0 = ComposerStaticInit3d8481c1d629e37cf271a903110a22c5::$prefixesPsr0;

        }, null, ClassLoader::class);
    }
}
