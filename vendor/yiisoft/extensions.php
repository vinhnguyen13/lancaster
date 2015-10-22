<?php

$vendorDir = dirname(__DIR__);

return array(
    'yiisoft/yii2-bootstrap' =>
        array(
            'name' => 'yiisoft/yii2-bootstrap',
            'version' => '2.0.4.0',
            'alias' =>
                array(
                    '@yii/bootstrap' => $vendorDir . '/yiisoft/yii2-bootstrap',
                ),
        ),
    'yiisoft/yii2-gii' =>
        array(
            'name' => 'yiisoft/yii2-gii',
            'version' => '*',
            'alias' =>
                array(
                    '@yii/gii' => $vendorDir . '/yiisoft/yii2-gii',
                ),
        ),
    'yiisoft/yii2-admin' =>
        array(
            'name' => 'yiisoft/yii2-admin',
            'version' => '*',
            'alias' =>
                array(
                    '@mdm/admin' => $vendorDir . '/yiisoft/yii2-admin',
                ),
        ),
    'yiisoft/yii2-user' =>
        array(
            'name' => 'yiisoft/yii2-user',
            'version' => '*',
            'alias' =>
                array(
                    '@dektrium/user' => $vendorDir . '/dektrium/yii2-user',
                ),
        ),
    'yiisoft/yii2-authclient' =>
        array(
            'name' => 'yiisoft/yii2-authclient',
            'version' => '*',
            'alias' =>
                array(
                    '@yii/authclient' => $vendorDir . '/yiisoft/yii2-authclient',
                ),
        ),
    'yiisoft/yii2-jui' =>
        array(
            'name' => 'yiisoft/yii2-jui',
            'version' => '*',
            'alias' =>
                array(
                    '@yii/jui' => $vendorDir . '/yiisoft/yii2-jui',
                ),
        ),
    'lajax/translatemanager' =>
        array(
            'name' => 'lajax/translatemanager',
            'version' => '*',
            'alias' =>
                array(
                    '@lajax/translatemanager' => $vendorDir . '/lajax/yii2-translate-manager',
                ),
        ),
    'yiisoft/yii2-swiftmailer' =>
        array(
            'name' => 'yii/swiftmailer',
            'version' => '*',
            'alias' =>
                array(
                    '@yii/swiftmailer' => $vendorDir . '/yiisoft/yii2-swiftmailer',
                ),
        ),
    'funson86/cms' =>
        array(
            'name' => 'funson86/cms',
            'version' => '*',
            'alias' =>
                array(
                    '@funson86/cms' => $vendorDir . '/funson86/yii2-cms',
                ),
        ),
    'funson86/blog' =>
        array(
            'name' => 'funson86/blog',
            'version' => '*',
            'alias' =>
                array(
                    '@funson86/blog' => $vendorDir . '/funson86/yii2-blog',
                ),
        ),
    'funson86/setting' =>
        array(
            'name' => 'funson86/setting',
            'version' => '*',
            'alias' =>
                array(
                    '@funson86/setting' => $vendorDir . '/funson86/yii2-setting',
                ),
        ),
    'mihaildev/ckeditor' =>
        array(
            'alias' =>
                array(
                    '@mihaildev/ckeditor' => $vendorDir . '/mihaildev/yii2-ckeditor',
                ),
        ),
    'vsoft/express' =>
        array(
            'alias' =>
                array(
                    '@vsoft/express' => $vendorDir . '/vsoft/express',
                ),
        ),
    'johnb0' =>
        array(
            'alias' =>
                array(
                    '@johnb0/gallery' => $vendorDir . '/johnb0/yii2-gallery-manager',
                ),
        ),
    'dosamigos' =>
        array(
            'alias' =>
                array(
                    '@dosamigos/fileupload' => $vendorDir . '/dosamigos/yii2-file-upload-widget/src',
                ),
        ),
    'imagine' =>
        array(
            'alias' =>
                array(
                    '@yii/imagine' => $vendorDir . '/yiisoft/yii2-imagine',
                    '@Imagine/Image' => $vendorDir . '/yiisoft/yii-imagine-master/lib/Image',
                    '@Imagine/Gd' => $vendorDir . '/yiisoft/yii-imagine-master/lib/Gd',
                ),
        ),
    'newerton' =>
        array(
            'alias' =>
                array(
                    '@newerton/fancybox' => $vendorDir . '/newerton/yii2-fancybox',
                ),
        ),
    'Zelenin' =>
        array(
            'alias' =>
                array(
                    '@Zelenin/yii/behaviors' => $vendorDir . '/zelenin/yii2-slug-behavior',
                    '@Zelenin/Slugifier' => $vendorDir . '/zelenin/slugifier',
                ),
        ),
    'kartik' =>
        array(
            'alias' =>
                array(
                    '@kartik/datetime' => $vendorDir . '/kartik-v/yii2-widget-datetimepicker-master',
                    '@kartik/base' => $vendorDir . '/kartik-v/yii2-krajee-base-master',
                    '@kartik/helpers' => $vendorDir . '/kartik-v/yii2-helpers-master',
                    '@kartik/money' => $vendorDir . '/kartik-v/yii2-money-master',
                ),
        ),
    'mervick' =>
        array(
            'alias' =>
                array(
                    '@mervick/image' => $vendorDir . '/mervick/yii2-image-master',
                    '@mervick/image/drivers' => $vendorDir . '/mervick/yii2-image-master/drivers',
                ),
        ),

);
