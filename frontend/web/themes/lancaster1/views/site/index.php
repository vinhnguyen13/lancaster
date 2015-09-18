<?php
$this->title = Yii::t('about', 'Homepage');
/* @var $this yii\web\View */
?>
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class=""></li>
        <li class="" data-target="#myCarousel" data-slide-to="1"></li>
        <li class="active" data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img class="first-slide" src="<?=Yii::$app->view->theme->baseUrl?>/resources/IMG/01.png" alt="First slide">
            <div class="container">
                <div class="carousel-caption">
                    <div class="bannerblock">
                        <ul>
                            <li><img src="<?=Yii::$app->view->theme->baseUrl?>/resources/IMG/logo_01.png"></li>
                            <li class="title">Lancaster Legacy offers you a sweeping panoramic view of the city skyline </li>
                            <li>Besides 109 ultra-luxury and graciously furnished apartments ranging from studios to penthouses, the building also features 6 floors of working space for setting up professional and supreme offices.</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="item">
            <img class="second-slide" src="<?=Yii::$app->view->theme->baseUrl?>/resources/IMG/02.png" alt="Second slide">
            <div class="container">
                <div class="carousel-caption">

                </div>
            </div>
        </div>
        <div class="item">
            <img class="third-slide" src="<?=Yii::$app->view->theme->baseUrl?>/resources/IMG/03.png" alt="Third slide">
            <div class="container">
                <div class="carousel-caption">

                </div>
            </div>
        </div>
    </div>
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div><!-- /.carousel -->