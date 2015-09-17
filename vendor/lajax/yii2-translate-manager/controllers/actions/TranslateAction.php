<?php

namespace lajax\translatemanager\controllers\actions;

use Yii;
use yii\base\Action;
use lajax\translatemanager\bundles\TranslateAsset;
use lajax\translatemanager\bundles\TranslatePluginAsset;
use lajax\translatemanager\models\searches\LanguageSourceSearch;

/**
 * This class facilitates the listing of language elements to be translated.
 * @author Lajos Molnár <lajax.m@gmail.com>
 * @since 1.0
 */
class TranslateAction extends Action {

    /**
     * List of language elements.
     * @return string
     */
    public function run() {

        $searchModel = new LanguageSourceSearch;
        $dataProvider = $searchModel->search(Yii::$app->request->getQueryParams());

        TranslateAsset::register(Yii::$app->controller->view);
        TranslatePluginAsset::register(Yii::$app->controller->view);

        return $this->controller->render('translate', [
                    'dataProvider' => $dataProvider,
                    'searchModel' => $searchModel,
                    'language_id' => Yii::$app->request->get('language_id', '')
        ]);
    }

}
