<?php
use Jcupitt\Vips;

require "vendor/autoload.php";
ini_set('ffi.enable','On');

$image = Vips\Image::thumbnail(__DIR__ . '/test_image.png', 100);
$image->pngsave(__DIR__ .'/result.png');