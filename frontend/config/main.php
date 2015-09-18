<?php
$params = array_merge(
    require(__DIR__ . '/../../common/config/params.php'),
    require(__DIR__ . '/../../common/config/params-local.php'),
    require(__DIR__ . '/params.php'),
    require(__DIR__ . '/params-local.php')
);

return [
    'id' => 'app-frontend',
    'name'=>'Lancaster',
    'basePath' => dirname(__DIR__),
    'bootstrap' => ['log'],
    'language'=>'vi',
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
    ],
    'params' => $params,
];
