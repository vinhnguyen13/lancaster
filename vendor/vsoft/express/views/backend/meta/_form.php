<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model vsoft\express\models\LcMeta */
/* @var $form yii\widgets\ActiveForm */

$metadata = \yii\helpers\Json::decode($model->metadata,true);
?>

<div class="lc-meta-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'url')->textInput(['maxlength' => true]) ?>

    <?php
    // Fixed add tags:
    // Site name => 'Lancaster News',
    // Object Type => 'article',
    // Localizations => 'vi_VN' and alter => 'en_US'

    echo Html::label('Title');
    echo Html::input('text','seo_title',$metadata["seo_title"],['class'=>'form-control form-group']);

    echo Html::label('Keywords');
    echo Html::input('text','seo_keywords',$metadata["seo_keywords"],['class'=>'form-control form-group']);

    echo Html::label('Description');
    echo Html::input('text','seo_description',$metadata["seo_description"],['class'=>'form-control form-group']);

    echo Html::label('Image');
    echo Html::input('text','seo_image',$metadata["seo_image"],['class'=>'form-control form-group']);

    echo Html::label('Author');
    echo Html::input('text','seo_author',$metadata["seo_author"],['class'=>'form-control form-group']);

    echo Html::label('Publisher');
    echo Html::input('text','seo_publisher',$metadata["seo_publisher"],['class'=>'form-control form-group']);

    ?>
    <br>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? Yii::t('meta', 'Create') : Yii::t('meta', 'Update'), ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>
    <?php ActiveForm::end(); ?>

</div>
