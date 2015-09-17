<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\modules\gallery\models\Gallery */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="gallery-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'name')->textInput(['maxlength' => 255]) ?>

    <?= $form->field($model, 'description')->textInput(['maxlength' => 255]) ?>
    
    <?= $form->field($model, 'status')->dropDownList($model::getGalleryStatusesArray()) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? '<i class="glyphicon glyphicon-save"></i> Добавить' : '<i class="glyphicon glyphicon-save"></i> Сохранить', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
        <?php if(!$model->isNewRecord): ?>
        <?= Html::a('Перейти к изображениям', ['photos', 'id' => $model->id], ['class' => 'btn btn-default']) ?>
        <?php endif; ?>
    </div>    

    <?php ActiveForm::end(); ?>

</div>
