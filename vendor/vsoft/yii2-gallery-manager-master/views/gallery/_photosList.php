<?php

use yii\helpers\Html;
use newerton\fancybox\FancyBox;

?>

<?php
    echo FancyBox::widget([
        'target' => 'a[rel=fancybox]',
        'helpers' => true,
        'mouse' => false,
        'config' => [
            'maxWidth' => '90%',
            'maxHeight' => '90%',
            'playSpeed' => 7000,
            'padding' => 0,
            'fitToView' => false,
            'width' => '70%',
            'height' => '70%',
            'autoSize' => false,
            'closeClick' => false,
            'openEffect' => 'elastic',
            'closeEffect' => 'elastic',
            'prevEffect' => 'elastic',
            'nextEffect' => 'elastic',
            'closeBtn' => false,
            'openOpacity' => true,
            'helpers' => [
                'title' => ['type' => 'float'],
                'buttons' => [],
                'thumbs' => ['width' => 68, 'height' => 50],
                'overlay' => [
                    'css' => [
                        'background' => 'rgba(0, 0, 0, 0.8)'
                    ]
                ]
            ],
        ]
    ]);
?>

<div class="gallery-photos-list">        
    <?php if(count($photos) > 0): ?>    
        <ul class="list-inline">
            <?php foreach($photos as $photo): ?>                    
            <li>                
                <p>
                    <?= Html::a(Html::img($photo->getThumbUrl('small')), $photo->url, ['rel' => 'fancybox']); ?>                   
                </p>
                <p class="text-center">
                    <?= Html::button('<i class="glyphicon glyphicon-trash"></i> Удалить', 
                            [
                                'class' => 'btn btn-danger btn-xs gallery-photo-delete', 
                                'data-url' => yii\helpers\Url::toRoute(['gallery-photo/delete', 'id' => $photo->id])
                            ]); 
                    ?>                                
                </p>
            </li>
            <?php endforeach; ?>
        </ul>
    <?php else: ?>
        <p><i>Нет изображений</i></p>        
    <?php endif; ?>
</div>
