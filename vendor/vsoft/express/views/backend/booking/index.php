<?php

use yii\helpers\ArrayHelper;
use yii\helpers\Html;
use yii\grid\GridView;
use vsoft\express\models\LcBuilding;

/* @var $this yii\web\View */
/* @var $searchModel vsoft\express\models\LcBookingSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Bookings';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="lc-booking-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Lc Booking', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

//            [
//                'attribute' => 'lc_building',
//                'value' => 'lc_building.building_name'
//            ],
            [
                'attribute' => 'building',
                'value' => function ($model) {
                    echo "<pre>";
                    print_r($model);
                    echo "<pre>";
                    exit();
//                    if($model->getLcBuilding()){
//                        $name = $model->getLcBuilding()->building_name;
//                        return $name;
//                    }
                    return '';
                },
            ],
            'checkin',
            'checkout',
//            'apart_type',
             'floorplan',
             'fullname',
             'phone',
            // 'email:email',
            // 'address',
            // 'passport_no',
            // 'nationality',
            // 'info:ntext',
            // 'ip',
            // 'agent',
            // 'browser_type',
            // 'browser_name',
            // 'browser_version',
            // 'platform',
             'created_at:datetime',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

</div>
