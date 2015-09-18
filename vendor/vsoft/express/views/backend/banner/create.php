<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model vsoft\express\models\LcBanner */

$this->title = 'Create Lc Banner';
$this->params['breadcrumbs'][] = ['label' => 'Lc Banners', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="lc-banner-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
