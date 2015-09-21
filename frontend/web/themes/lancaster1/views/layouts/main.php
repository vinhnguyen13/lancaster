<?php

/* @var $this \yii\web\View */
/* @var $content string */

use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use frontend\assets\AppAsset;
use common\widgets\Alert;

AppAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?= Html::csrfMetaTags() ?>
    <title><?= Yii::$app->name .' :: '. Html::encode($this->title) ?></title>
    <?php $this->head() ?>
    <meta name="viewport" content="width=device-width">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <link rel="stylesheet" href="<?=Yii::$app->view->theme->baseUrl?>/resources/css/screen.css">
    <script src="<?=Yii::$app->view->theme->baseUrl?>/resources/js/ie-emulation-modes-warning.js"></script>
</head>
<body>
<?php $this->beginBody() ?>
<nav class="navbar navbar-default menubar">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse bar_bg" id="bs-example-navbar-collapse-1">
            <?php $supportedLanguages = Yii::$app->bootstrap['languageSelector']['supportedLanguages']; ?>
            <ul class="nav navbar-nav">
                <li class="active"><a href="<?=\yii\helpers\Url::toRoute('/express/about')?>"><?=\Yii::t('express/about', 'About Us');?><span class="sr-only">(current)</span></a></li>
                <li><a href="<?=\yii\helpers\Url::toRoute('/express/news')?>"><?=\Yii::t('express/news', 'News');?></a></li>
                <li><a href="<?=\yii\helpers\Url::toRoute('/express/contact')?>"><?=\Yii::t('express/contact', 'Contact');?></a></li>
                <li><a>|</a></li>
                <li><a href="<?=\yii\helpers\Url::toRoute(['/site/language', 'language' => !empty($supportedLanguages[0]) ? $supportedLanguages[0] : ''])?>">En</a></li>
                <li><a href="<?=\yii\helpers\Url::toRoute(['/site/language', 'language' => !empty($supportedLanguages[1]) ? $supportedLanguages[1] : ''])?>">Vi</a></li>
            </ul>
            <div class="text_pagecontent">LANCASTER LEGACY <i class="glyphicon glyphicon-menu-down"></i></div>
            <ul class="nav navbar-nav navbar-right">
                <li><i class="glyphicon glyphicon-earphone icon"></i><a href="#" class="sdt">0903 090 909</a></li>
                <li class="rightbgmenu"><a href="<?=\yii\helpers\Url::toRoute('/express/booking')?>" class="book"><?=\Yii::t('express/booking', 'Book Now');?></a></li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<?php $this->beginContent('@app/views/layouts/_partials/menutop.php'); ?>
<?php $this->endContent();?>

<!-- Carousel
================================================== -->
<?= $content ?>

<!--
<div class="container-fluid layout">
  <div class="row main_content">
    <img src="IMG\01.png">
  </div>
  <div class="bannerblock">
    <ul>
      <li><img src="IMG\logo_01.png"></li>
      <li class="title">Lancaster Legacy offers you a sweeping panoramic view of the city skyline </li>
      <li>Besides 109 ultra-luxury and graciously furnished apartments ranging from studios to penthouses, the building also features 6 floors of working space for setting up professional and supreme offices.</li>
    </ul>
  </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
 -->
<script src="<?=Yii::$app->view->theme->baseUrl?>/resources/js/jquery.js"></script>
<script src="<?=Yii::$app->view->theme->baseUrl?>/resources/js/bootstrap.js"></script>
<script src="<?=Yii::$app->view->theme->baseUrl?>/resources/js/holder.htm"></script>
<script src="<?=Yii::$app->view->theme->baseUrl?>/resources/js/ie10-viewport-bug-workaround.js"></script>

<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
