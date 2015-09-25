<?php
use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $user common\models\User */
$contact = $this->params['contact'];
?>
<div class="password-reset">
    <p>Hello <?= Html::encode($contact->name) ?>,</p>
    <p>We are receied your booking. Thank you !</p>
</div>
