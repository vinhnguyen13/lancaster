<?php 
    use yii\helpers\Html;
?>

<div class="gallery-default-index">
    <h2>Модуль Галерея</h2>
    
    <div class="row-fluid text-center">
        <?= Html::a(Html::button('Список галерей', ['class' => 'btn btn-default']), ['gallery/index']); ?>
        <?= Html::a(Html::button('Добавить галерею', ['class' => 'btn btn-default']), ['gallery/create']); ?>        
    </div>   
</div>


