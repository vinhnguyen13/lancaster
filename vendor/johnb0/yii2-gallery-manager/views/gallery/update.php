<?php

use yii\helpers\Html;
use yii\helpers\Url;

/* @var $this yii\web\View */
/* @var $model backend\modules\gallery\models\Gallery */

$this->title = 'Редактирование галереи: ' . ' ' . $model->name;
$this->params['breadcrumbs'][] = ['label' => 'Модуль Галерея', 'url' => Url::toRoute('/gallery')];
$this->params['breadcrumbs'][] = ['label' => 'Список галерей', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->name, 'url' => ['update', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Редактирование';
?>
<div class="gallery-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
