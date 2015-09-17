<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model vsoft\express\models\LcBuilding */

$this->title = 'Update Lc Building: ' . ' ' . $model->lc_building_id;
$this->params['breadcrumbs'][] = ['label' => 'Lc Buildings', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->lc_building_id, 'url' => ['view', 'id' => $model->lc_building_id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="lc-building-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
