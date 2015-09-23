<div class="gallery-form">
    <?php $form = \yii\widgets\ActiveForm::begin([
        'action' => \yii\helpers\Url::current(),
        'options' => ['class'=>'save-photo-info form']
    ]); ?>

    <?= $form->field($model, 'name')->textInput(['maxlength' => 255]) ?>

    <?= $form->field($model, 'description')->widget(\mihaildev\ckeditor\CKEditor::className(),[
        'editorOptions' => [
            'preset' => 'full',
            'inline' => false,
        ],
    ]); ?>

    <div class="form-group">
        <?= \yii\helpers\Html::submitButton($model->isNewRecord ? '<i class="glyphicon glyphicon-save"></i> Save' : '<i class="glyphicon glyphicon-save"></i> Update', ['class' => $model->isNewRecord ? 'btn btn-save-photo-info btn-success' : 'btn btn-save-photo-info btn-primary']) ?>
    </div>

    <?php \yii\widgets\ActiveForm::end(); ?>

</div>

<?php
$this->registerJs("
  $('.btn-save-photo-info').click(function(){
        $.ajax({
                type: 'POST',
                url: '".\yii\helpers\Url::current()."',
                data: $('.save-photo-info').serializeArray(),
                success: function (data) {
                    $('#loginModal').find('.close').trigger('click');
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                }
        });
       return false;
  });
");
?>
