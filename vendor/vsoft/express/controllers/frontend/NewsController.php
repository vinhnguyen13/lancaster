<?php

namespace vsoft\express\controllers\frontend;

class NewsController extends \yii\web\Controller
{
    public function actionIndex()
    {
        return $this->render('index');
    }

}
