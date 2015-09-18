<?php
/**
 * Created by PhpStorm.
 * User: Nhut Tran
 * Date: 9/18/2015 11:51 AM
 */
namespace vsoft\express\controllers\frontend;

use yii\web\Controller;

class BookingController extends Controller
{
    public function actionIndex()
    {
        return $this->render('index');
    }
}