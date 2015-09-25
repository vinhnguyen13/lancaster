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
                    <?= Html::a(Html::img($photo->getThumbUrl('small')), $photo->url, ['rel' => 'fancybox', 'data-toggle'=>'tooltip', 'data-placement'=>'top', 'title'=>$photo->name]); ?>
                </p>
                <p class="text-center">
                    <?= Html::button('<i class="glyphicon glyphicon-edit"></i> Edit',
                            [
                                'class' => 'btn btn-danger btn-xs gallery-photo-edit',
                                'data-id' => $photo->id,
                                'data-url' => yii\helpers\Url::toRoute(['gallery-photo/edit-photo-info', 'id' => $photo->id])
                            ]); 
                    ?>
                    <?= Html::button('<i class="glyphicon glyphicon-trash"></i> Remove',
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
        <p><i>No images</i></p>
    <?php endif; ?>
</div>

<!--Popup Edit photo info-->
<?php yii\bootstrap\Modal::begin([
    'headerOptions' => ['id' => 'modalHeader'],
    'header' => '<h2 class="titleHeader">Edit Photo</h2>',
    'id' => 'loginModal',
    'size' => 'modal-lg',
    //keeps from closing modal with esc key or by clicking out of the modal.
    // user must click cancel or X to close
    'clientOptions' => [],
    'options' => ['aria-labelledby'=>'loginLabel', 'aria-hidden'=>'true', 'backdrop' => 'static', 'keyboard' => 'false']
]);?>
<?php yii\bootstrap\Modal::end();?>
<?php
$this->registerJs('
    (function($) {
        $(".gallery-photo-edit").click(function () {
            var pid = $(this).data("id");
            $.ajax({
                url: $(this).data("url"),
                success: (function(data) {
                    $("#loginModal").find(".modal-body").html(data);
                    $("#loginModal").find(".titleHeader").html("Edit Photo: " + pid);
                    $("#loginModal").modal("show");
                }),
                dataType: "html"
            });

        });
        $(\'[data-toggle="tooltip"]\').tooltip();
    })(jQuery);
');
?>
<!--Popup Edit photo info-->
