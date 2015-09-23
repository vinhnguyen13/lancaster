<?php

namespace vsoft\express\controllers\frontend;

use vsoft\express\models\LcContact;
use Yii;
use yii\db\ActiveRecord;
use yii\db\Expression;

class ContactController extends \yii\web\Controller
{
    public function actionIndex()
    {
        return $this->render('index');
    }

    public function actionSendContact(){
        $model = new LcContact();
        if ($model->load(Yii::$app->request->post()) && $model->save()) {
//            return $this->redirect(['view', 'id' => $model->id]);
            Yii::$app->getSession()->setFlash('reSent', 'Your contact is sent. Thank you!');
            return $this->redirect(['/contact']);
        } else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }
    }

}
