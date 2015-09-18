<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel vsoft\express\models\LcBookingSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Lc Bookings';
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

            'lc_booking_id',
            'lc_building_id',
            'checkin',
            'checkout',
            'apart_type',
            // 'floorplan',
            // 'fullname',
            // 'phone',
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
            // 'created_at',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

</div>
