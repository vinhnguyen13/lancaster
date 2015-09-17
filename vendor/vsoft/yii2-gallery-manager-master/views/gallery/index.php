<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\helpers\Url;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Список галерей';
$this->params['breadcrumbs'][] = ['label' => 'Модуль Галерея', 'url' => Url::toRoute('/gallery')];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="gallery-index">
    
    <?php         
//        print_r(scandir(Yii::getAlias("@backend") . "\web\uploads\gallery\Tempovaya gallereya"));
//        echo count(glob(Yii::getAlias("@backend") . "\web\uploads\gallery\Tempovaya gallereya\*"));
//        echo dirname(Yii::getAlias("@backend") . "/uploads/gallery/Gidroagregat/Tulips.jpg");    
    ?>

    <div class="model-view-section-header">
        <div class="model-view-section-title">
            <h2><?= Html::encode($this->title) ?></h2>
        </div>            
        <div class="model-view-section-controls">
            <?= Html::a('<i class="glyphicon glyphicon-plus"></i> Добавить галерею', ['create'], ['class' => 'btn btn-success btn-sm']) ?>
        </div>                            
    </div>
    <div class="model-view-section-body">                        
        <?= GridView::widget([
            'dataProvider' => $dataProvider,
            'columns' => [
                ['class' => 'yii\grid\SerialColumn'],
                
                [
                    'attribute' => 'name', 
                    'format' => 'raw',
                    'value' => function($data) {
                        return Html::a($data->name, ['gallery/photos', 'id' => $data->id]);
                    },                
                ],                
                'description',
                [
                    'class' => 'yii\grid\DataColumn',
                    'attribute' => 'status',
                    'value' => function($data) {
                        return $data->getGalleryStatus();
                    },
                ],

                [
                    'class' => 'yii\grid\ActionColumn',
                    'template' => '{update} {delete}'
                ],
            ],
        ]); ?>
    </div>             

</div>
