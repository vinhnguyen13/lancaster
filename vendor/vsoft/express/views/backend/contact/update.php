<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model vsoft\express\models\LcContact */

$this->title = 'Update Lc Contact: ' . ' ' . $model->name;
$this->params['breadcrumbs'][] = ['label' => 'Lc Contacts', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->name, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="lc-contact-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
