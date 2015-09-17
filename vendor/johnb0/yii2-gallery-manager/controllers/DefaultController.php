<?php

namespace johnb0\gallery\controllers;

use yii\web\Controller;
use johnb0\gallery\models;

class DefaultController extends Controller
{
    public function actionIndex()
    {        
        return $this->render('index');
    }
}
