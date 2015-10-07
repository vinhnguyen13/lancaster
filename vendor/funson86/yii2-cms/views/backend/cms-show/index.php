<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\helpers\ArrayHelper;
use funson86\cms\Module;
use funson86\cms\models\CmsCatalog;

/* @var $this yii\web\View */
/* @var $searchModel app\models\CmsShowSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Module::t('cms', 'Cms Shows');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="cms-show-index">

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a(Module::t('cms', 'Create ') . Module::t('cms', 'Cms Show'), ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            [
                'attribute' => 'catalog_id',
                'value' => function ($model) {
                    return $model->catalog->title;
                },
                'filter' => Html::activeDropDownList($searchModel, 'catalog_id', ArrayHelper::map(CmsCatalog::find()->asArray()->all(), 'id', 'title'),['class'=>'form-control','prompt' => '- Category -']),
            ],
            [
                'attribute' => 'title',
                'value' => function ($model) {
                    return Html::a($model->title, ['update', 'id' => $model->id]);
                },
                'format' => 'raw',
            ],
            'surname',
            // 'brief',
            // 'content:ntext',
            // 'seo_title',
            // 'seo_keywords',
            // 'seo_description',
            // 'banner',
            'template_show',
            // 'author',
            'click',
            // 'status',
            // 'created_at:date',
            'updated_at:date',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

</div>
