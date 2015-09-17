<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model vsoft\express\models\LcBuilding */

$this->title = $model->lc_building_id;
$this->params['breadcrumbs'][] = ['label' => 'Lc Buildings', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="lc-building-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->lc_building_id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->lc_building_id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'lc_building_id',
            'building_name',
            'address',
            'phone',
            'fax',
            'email:email',
            'hotline',
            'description',
            'created_at',
            'updated_at',
            'created_by',
            'updated_by',
            'isbooking',
        ],
    ]) ?>

</div>
