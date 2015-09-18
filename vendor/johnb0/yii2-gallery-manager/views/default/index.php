<?php 
    use yii\helpers\Html;
?>

<div class="gallery-default-index">
    <h2>Gallery Module</h2>
    
    <div class="row-fluid text-center">
        <?= Html::a(Html::button('Index', ['class' => 'btn btn-default']), ['gallery/index']); ?>
        <?= Html::a(Html::button('Create', ['class' => 'btn btn-default']), ['gallery/create']); ?>
    </div>   
</div>


