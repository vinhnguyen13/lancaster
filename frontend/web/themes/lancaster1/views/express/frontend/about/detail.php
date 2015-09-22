<?php
$this->title = Yii::t('news', 'News');
/* @var $this yii\web\View */
?>
<div class="container-fluid newsdetail">
    <div class="row main_content">
        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 newsleft">
            <span class="btn_pre"><img src="<?=Yii::$app->view->theme->baseUrl?>/resources/IMG/btn_back.png"><a href="<?=\yii\helpers\Url::home()?>">Back to Lancaster Legacy</a></span>
            <span class="btn_next"><img src="<?=Yii::$app->view->theme->baseUrl?>/resources/IMG/btn_back.png"><a href="<?=\yii\helpers\Url::toRoute(['/express/about'])?>">Back to About</a></span>
            <div class="imgnewdetail"><img src="<?=Yii::$app->view->theme->baseUrl?>/resources/IMG/newsbanner.png"></div>
            <div class="relatedpost">
                <p>Related post</p>
                <div class="imgpost">
                    <ul>
                        <li><img src="<?=Yii::$app->view->theme->baseUrl?>/resources/IMG/post_01.png"></li>
                        <li class="bodertext">Lorem ipsum dolor sit amet dolor sit amet </li>
                    </ul>
                </div>
                <div class="imgpost">
                    <ul>
                        <li><img src="<?=Yii::$app->view->theme->baseUrl?>/resources/IMG/post_02.png"></li>
                        <li class="bodertext">Lorem ipsum dolor sit amet dolor sit amet </li>
                    </ul>
                </div>
                <div class="imgpost">
                    <ul>
                        <li><img src="<?=Yii::$app->view->theme->baseUrl?>/resources/IMG/post_03.png"></li>
                        <li class="bodertext">Lorem ipsum dolor sit amet dolor sit amet </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 newsright">
            <span class="blockempty"></span>
            <h2><?=$detail->title;?></h2>
            <ul>
                <li class="textcontent">
                    <?=$detail->content;?>
                </li>
                <li class="textfooter"><span class="footer"><?=date('d M Y', $detail->created_at)?></span><span class="share">Share</span><span class="facebookblack"></span>
                    <span class="google"></span></li>
            </ul>
        </div>
    </div>
</div>