<?php
/**
 * Created by PhpStorm.
 * User: vinhnguyen
 * Date: 9/23/2015
 * Time: 2:14 PM
 */
?>
<div class="container-fluid layoutviews">
    <!-- Carousel
    ================================================== -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <div class="ckeckitem">
            <ul>
                <li class="active" data-target="#myCarousel" data-slide-to="0"><span class="arrow-up"></span>Living room</li>
                <li data-target="#myCarousel" data-slide-to="1">Kitchen</li>
                <li data-target="#myCarousel" data-slide-to="2">Bathroom</li>
                <li data-target="#myCarousel" data-slide-to="3">Bedroom</li>
            </ul>
        </div>
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class=""></li>
            <li class="" data-target="#myCarousel" data-slide-to="1"></li>
            <li class="active" data-target="#myCarousel" data-slide-to="2"></li>
            <li class="" data-target="#myCarousel" data-slide-to="3"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img class="first-slide" src="<?=Yii::$app->view->theme->baseUrl?>/resources/IMG/01.png" alt="First slide">
                <div class="container">
                    <div class="carousel-caption">

                    </div>
                </div>
            </div>
            <div class="item">
                <img class="first-slide" src="<?=Yii::$app->view->theme->baseUrl?>/resources/IMG/02.png" alt="First slide">
                <div class="container">
                    <div class="carousel-caption">
                    </div>
                </div>
            </div>
            <div class="item">
                <img class="first-slide" src="<?=Yii::$app->view->theme->baseUrl?>/resources/IMG/03.png" alt="First slide">
                <div class="container">
                    <div class="carousel-caption">
                    </div>
                </div>
            </div>
            <div class="item">
                <img class="first-slide" src="<?=Yii::$app->view->theme->baseUrl?>/resources/IMG/04.png" alt="First slide">
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

</div>
