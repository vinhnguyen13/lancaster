<?php 

namespace johnb0\gallery;

use yii\web\AssetBundle;

class GalleryAssets extends AssetBundle
{
    public $sourcePath = __DIR__."/assets";

    public $js = [
        'js/gallery.js'
    ];

    public $css = [
        'css/gallery.css'
    ];
    
    public $depends = [
        'yii\web\JqueryAsset',
    ];
   
} 