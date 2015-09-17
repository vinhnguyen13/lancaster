<?php

use yii\helpers\Html;
use yii\helpers\Url;


/* @var $this yii\web\View */
/* @var $model backend\modules\gallery\models\Gallery */

$this->title = 'Adding Photos';
$this->params['breadcrumbs'][] = ['label' => 'Gallery', 'url' => Url::toRoute('/gallery')];
$this->params['breadcrumbs'][] = ['label' => 'List of galleries', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="gallery-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
