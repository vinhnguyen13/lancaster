<?php
use yii\web\View;
use yii\helpers\Html;
use yii\helpers\Url;
$this->registerCssFile(Yii::$app->view->theme->baseUrl."/resources/css/swiper.css", ['depends' => [\yii\bootstrap\BootstrapAsset::className()]], 'css-swiper');
$this->registerCssFile(Yii::$app->view->theme->baseUrl."/resources/css/main.css", ['depends' => [\yii\bootstrap\BootstrapAsset::className()]], 'css-main');

Yii::$app->getView()->registerJsFile(Yii::$app->view->theme->baseUrl.'/resources/js/jquery.min.js', ['position'=>View::POS_HEAD]);
Yii::$app->getView()->registerJsFile(Yii::$app->view->theme->baseUrl.'/resources/js/swiper.jquery.min.js', ['position'=>View::POS_HEAD]);
Yii::$app->getView()->registerJsFile(Yii::$app->view->theme->baseUrl.'/resources/js/jquery.easing.js', ['position'=>View::POS_HEAD]);
Yii::$app->getView()->registerJsFile(Yii::$app->view->theme->baseUrl.'/resources/js/jquery.scrollspeed.js', ['position'=>View::POS_HEAD]);
Yii::$app->getView()->registerJsFile(Yii::$app->view->theme->baseUrl.'/resources/js/main.js', ['position'=>View::POS_HEAD]);
Yii::$app->getView()->registerJsFile(Yii::$app->view->theme->baseUrl.'/resources/js/home.js', ['position'=>View::POS_HEAD]);
Yii::$app->getView()->registerJsFile('https://maps.googleapis.com/maps/api/js?key=AIzaSyASTv_J_7DuXskr5SaCZ_7RVEw7oBKiHi4&callback=initMap', ['position'=>View::POS_HEAD, 'defer'=>'', 'async'=>'']);
?>
<?php $this->beginContent('@app/views/layouts/main.php'); ?>
    <?php $this->beginContent('@app/views/layouts/_partials/header.php'); ?><?php $this->endContent();?>
    <main>
        <?= $content ?>
    </main>
    <?php $this->beginContent('@app/views/layouts/_partials/footer.php'); ?><?php $this->endContent();?>
<?php $this->endContent();?>
