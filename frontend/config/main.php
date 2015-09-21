<?php
$params = array_merge(
    require(__DIR__ . '/../../common/config/params.php'),
    require(__DIR__ . '/../../common/config/params-local.php'),
    require(__DIR__ . '/params.php'),
    require(__DIR__ . '/params-local.php')
);
use \yii\web\Request;
$baseUrl = str_replace('/frontend/web', '', (new Request)->getBaseUrl());
return [
    'id' => 'app-frontend',
    'name'=>'Lancaster',
    'basePath' => dirname(__DIR__),
    'aliases' => array(
//        'webvimark' => dirname(dirname(__DIR__)) . '/vendor/webvimark'
    ),
    'bootstrap' => [
        'log',
        'languageSelector' => [
            'class' => 'frontend\components\LanguageSelector',
            'supportedLanguages' => ['en-US', 'vi-VN'],
        ],
    ],
    'language'=>'vi-VN',
    'controllerNamespace' => 'frontend\controllers',
    'modules'=>[
        'express' => [
            'class' => 'vsoft\express\Module',
            'controllerNamespace' => 'vsoft\express\controllers\frontend'
        ],
        'cms' => [
            'class' => 'funson86\cms\Module',
            'controllerNamespace' => 'funson86\cms\controllers\frontend'
        ],
    ],
    'components' => [
        'request' => [
            'baseUrl' => $baseUrl,
        ],
        'urlManager' => [
            'class' => 'yii\web\UrlManager',
            'enablePrettyUrl' => true,
            'showScriptName' => false,
            'enableStrictParsing' => false,
            'rules' => [
                'contact' => 'express/contact',
                'booking' => 'express/booking',
                'about' => 'express/about',
                'about/view/<id:\d+>-<slug>' => 'express/about/detail',
                'news' => 'express/news',
                'news/view/<id:\d+>-<slug>' => 'express/news/detail',
//                '<controller:\w+>/<id:\d+>' => '<controller>/view',
//                '<controller:\w+>/<action:\w+>/<id:\d+>' => '<controller>/<action>',
//                '<controller:\w+>/<action:\w+>' => '<controller>/<action>',

            ]
        ],
        'log' => [
            'traceLevel' => YII_DEBUG ? 3 : 0,
            'targets' => [
                [
                    'class' => 'yii\log\FileTarget',
                    'levels' => ['error', 'warning'],
                ],
            ],
        ],
        'errorHandler' => [
            'errorAction' => 'site/error',
        ],
        'view' => [
            'theme' => [
                'basePath' => '@webroot/themes/lancaster1',
                'baseUrl' => '/frontend/web/themes/lancaster1',
                'pathMap' => [
                    '@app/views' => '@webroot/themes/lancaster1/views',
                    '@vsoft/express/views' => '@webroot/themes/lancaster1/views/express',
                ],
            ],
        ],
        'setting' => [
            'class' => 'funson86\setting\Setting',
        ],
        'assetManager' => [
            'bundles' => [
                'yii\bootstrap\BootstrapAsset' => [
                    'css' => [],
                ],
            ],
        ],
    ],
    'params' => $params,
];
