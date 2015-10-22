<?php
/**
 * Created by PhpStorm.
 * User: Nhut Tran
 * Date: 10/22/2015 1:07 PM
 */

namespace frontend\components;


use vsoft\express\models\LcMeta;
use Yii;
use yii\base\Component;

class MetaExt extends Component
{
    public function welcome()
    {
        echo 'Welcome to Meta Extension';
    }

    public function getMeta($url)
    {
        $model = LcMeta::find()
            ->where(['LIKE', 'url', $url])
            ->orderBy(['id' => SORT_DESC])
            ->one();
        return $model;
    }

    public function addMeta($data)
    {
        if (!empty($data['seo_keywords']))
            Yii::$app->view->registerMetaTag(['name' => 'keywords', 'content' => $data['seo_keywords']]);

        if (!empty($data['seo_description']))
            Yii::$app->view->registerMetaTag([
                'name' => 'description',
                'content' => $data['seo_description'],
            ]);
    }

    public function addMetaFB($data)
    {
        if (!empty($data['seo_title']))
            Yii::$app->view->registerMetaTag([
                'property' => 'og:title',
                'content' => $data['seo_title'],
            ]);

        if (!empty($data['seo_site_name']))
            Yii::$app->view->registerMetaTag([
                'property' => 'og:site_name',
                'content' => $data['seo_site_name'],
            ]);

        if (!empty($data['seo_url']))
            Yii::$app->view->registerMetaTag([
                'property' => 'og:url',
                'content' => $data['seo_url'],
            ]);

        if (!empty($data['seo_image']))
            Yii::$app->view->registerMetaTag([
                'property' => 'og:image',
                'content' => $data['seo_image'],
            ]);

        if (!empty($data['seo_description']))
            Yii::$app->view->registerMetaTag([
                'property' => 'og:description',
                'content' => $data['seo_description'],
            ]);

        if (!empty($data['seo_fb_app_id']))
            Yii::$app->view->registerMetaTag([
                'property' => 'fb:app_id',
                'content' => $data['seo_fb_app_id'],
            ]);

        if (!empty($data['seo_type']))
            Yii::$app->view->registerMetaTag([
                'property' => 'og:type',
                'content' => $data['seo_type'],
            ]);

        if (!empty($data['seo_author']))
            Yii::$app->view->registerMetaTag([
                'property' => 'article:author',
                'content' => $data['seo_author'],
            ]);

        if (!empty($data['seo_publisher']))
            Yii::$app->view->registerMetaTag([
                'property' => 'article:publisher',
                'content' => $data['seo_publisher'],
            ]);

        if (!empty($data['seo_local']))
            Yii::$app->view->registerMetaTag([
                'property' => 'og:locale',
                'content' => $data['seo_local'],
            ]);
        if (!empty($data['seo_local_alternate']))
            Yii::$app->view->registerMetaTag([
                'property' => 'og:locale:alternate',
                'content' => $data['seo_local_alternate'],
            ]);
    }
}