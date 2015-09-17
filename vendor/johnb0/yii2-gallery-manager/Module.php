<?php

namespace johnb0\gallery;

class Module extends \yii\base\Module
{
    public $controllerNamespace = 'johnb0\gallery\controllers';

    public function init()
    {
        parent::init();

        // custom initialization code goes here
    }
    
    public $imageUrl = '/statics/gallery/images';
    
    public $imagePath = '@statics/web/gallery/images/';    
    
    

    /**
     * @var array thumbnails info
     */
    public $thumbs = [
        'small' => [
            'name' => 'Small size',
            'size' => [120, 80],
        ],
        'medium' => [
            'name' => 'Medium size',
            'size' => [400, 300],
        ],
        'large' => [
            'name' => 'Large size',
            'size' => [800, 600],
        ],
    ];
    
    /**
     * @var string defaultUsedThumb name of thumb that will be by default. If not exists, defaultThumbSize will be used
     */
    public $defaultUsedThumb;
    
    /**
     * @var array default thumbnail size, using in filemanager view.
     */
    private static $defaultThumbSize = [128, 128];
    
    /**
     * @return array default thumbnail size. Using in filemanager view.
     */
    public static function getDefaultThumbSize()
    {
        return self::$defaultThumbSize;
    }
}
