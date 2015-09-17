<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel vsoft\express\models\LcBuildingSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Lc Buildings';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="lc-building-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Lc Building', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'lc_building_id',
            'building_name',
            'address',
            'phone',
            'fax',
            'email',
            'hotline',
            'description',
            'created_at',
            'updated_at',
            'created_by',
            'updated_by',
            'isbooking',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

</div>
