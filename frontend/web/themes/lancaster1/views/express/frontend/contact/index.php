<?php
use yii\helpers\Html;
use yii\helpers\Url;

date_default_timezone_set('Asia/Ho_Chi_Minh');

$this->title = Yii::t('express/contact', 'Contact');
/* @var $this yii\web\View */
?>

<?php
if(Yii::$app->getSession()->hasFlash('reSent')) {
    \yii\bootstrap\Alert::begin([
        'options' => [
            'class' => 'alert alert-success',
        ],
    ]);

    echo Yii::$app->getSession()->getFlash('reSent');
    \yii\bootstrap\Alert::end();
}
?>

<div class="container-fluid contactt">
    <div class="row main_content">
        <span class="btn_back"><img src="<?=Yii::$app->view->theme->baseUrl?>/resources/IMG/btn_back.png"><a href="<?=\yii\helpers\Url::home()?>">Back to Lancaster Legacy</a></span>
        <h1 class="title"><?=Yii::t('express/contact', 'Contact')?></h1>
        <div class="btnsociety">
            <span class="facebook"></span>
            <span class="images"></span>
            <span class="youtube"></span>
        </div>
        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 blockitem">
            <span class="iconcontact"></span>
            <p>Lancaster Legacy</p>
            <ul>
                <li class="litextleft">Address</li>
                <li class="litextright">78 Ton That Thuyet St, 16 Ward, Dist 4, HCMC, Vietnam</li>
                <li class="litextleft">Phone</li>
                <li class="litextright">+ 84 8 3 8246810</li>
                <li class="litextleft">Fax</li>
                <li class="litextright">+ 84 8 3 8298163.</li>
                <li class="litextleft">Email</li>
                <li class="litextright">sales@trungthuygroup.vn</li>
                <li class="litextleft">Hotline</li>
                <li class="litextright"><b>0903 090 909</b></li>
            </ul>
        </div>
        <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 block">
            <span class="iconcontact"></span>
            <p>Lancaster Legacy</p>
            <ul>
                <li class="litextleft">Address</li>
                <li class="litextright">78 Ton That Thuyet St, 16 Ward, Dist 4, HCMC, Vietnam</li>
                <li class="litextleft">Phone</li>
                <li class="litextright">+ 84 8 3 8246810</li>
                <li class="litextleft">Fax</li>
                <li class="litextright">+ 84 8 3 8298163.</li>
                <li class="litextleft">Email</li>
                <li class="litextright">sales@trungthuygroup.vn</li>
                <li class="litextleft">Hotline</li>
                <li class="litextright"><b>0903 090 909</b></li>
            </ul>
        </div>
        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 block">
            <span class="iconcontact"></span>
            <p>Lancaster Legacy</p>
            <ul>
                <li class="litextleft">Address</li>
                <li class="litextright">78 Ton That Thuyet St, 16 Ward, Dist 4, HCMC, Vietnam</li>
                <li class="litextleft">Phone</li>
                <li class="litextright">+ 84 8 3 8246810</li>
                <li class="litextleft">Fax</li>
                <li class="litextright">+ 84 8 3 8298163.</li>
                <li class="litextleft">Email</li>
                <li class="litextright">sales@trungthuygroup.vn</li>
                <li class="litextleft">Hotline</li>
                <li class="litextright"><b>0903 090 909</b></li>
            </ul>
        </div>
    </div>
    <div class="row main_row">
        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 blockitem">
            <span class="iconcontact"></span>
            <p>Lancaster Legacy</p>
            <ul>
                <li class="litextleft">Address</li>
                <li class="litextright">78 Ton That Thuyet St, 16 Ward, Dist 4, HCMC, Vietnam</li>
                <li class="litextleft">Phone</li>
                <li class="litextright">+ 84 8 3 8246810</li>
                <li class="litextleft">Fax</li>
                <li class="litextright">+ 84 8 3 8298163.</li>
                <li class="litextleft">Email</li>
                <li class="litextright">sales@trungthuygroup.vn</li>
                <li class="litextleft">Hotline</li>
                <li class="litextright"><b>0903 090 909</b></li>
            </ul>
        </div>
        <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 block">
            <span class="iconcontact"></span>
            <p>Lancaster Legacy</p>
            <ul>
                <li class="litextleft">Address</li>
                <li class="litextright">78 Ton That Thuyet St, 16 Ward, Dist 4, HCMC, Vietnam</li>
                <li class="litextleft">Phone</li>
                <li class="litextright">+ 84 8 3 8246810</li>
                <li class="litextleft">Fax</li>
                <li class="litextright">+ 84 8 3 8298163.</li>
                <li class="litextleft">Email</li>
                <li class="litextright">sales@trungthuygroup.vn</li>
                <li class="litextleft">Hotline</li>
                <li class="litextright"><b>0903 090 909</b></li>
            </ul>
        </div>

        <?php
        $model = new \vsoft\express\models\LcContact();
        $form = \yii\widgets\ActiveForm::begin([
            'id' => 'contact-form',
            'action' => Url::toRoute('/express/contact/send-contact'),
            'options' => [
                'method' => 'post'
            ]
        ]); ?>
        <div class="col-xs-12 col-sm-5 col-md-5 col-lg-5 block">
            <p>Contact form</p>
           <!-- <div class="name"><input class="form-control" name="" placeholder="Your name" type="" />
            </div>
            <div class="address"><input class="form-control" name="" placeholder="Your Address" type="" />
            </div>
            <div class="inputdefault"><input class="form-control" name="" placeholder="Title" type="" />
            </div>
            <div class="textareadefault"><textarea class="form-control" name="" placeholder="Your massage" cols="" rows="5"></textarea>
            </div>
            <div class="btnsend"><a href="#">send</a></div> -->

            <?= $form->field($model, 'name')->textInput(['maxlength' => true,'tabIndex'=>'1','class' => 'name','placeholder' => 'Your Name'])->label(false) ?>
            <?= $form->field($model, 'address')->textInput(['maxlength' => true,'tabIndex'=>'2','class' => 'address','placeholder' => 'Your Address'])->label(false) ?>
            <?= $form->field($model, 'title')->textInput(['maxlength' => true,'tabIndex'=>'3','class' => 'inputdefault','placeholder' => 'Title'])->label(false) ?>
            <?= $form->field($model, 'message')->textarea(['maxlength' => true,'tabIndex'=>'4','class' => 'textareadefault','placeholder' => 'Your message','rows' => '6'])->label(false) ?>
            <?= Html::submitButton('Submit', ['class' => 'btnsend']) ?>
        </div>
        <?php \yii\widgets\ActiveForm::end(); ?>
    </div>
</div>
