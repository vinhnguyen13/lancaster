<?php
/**
 * Created by PhpStorm.
 * User: vinhnguyen
 * Date: 9/23/2015
 * Time: 2:14 PM
 */
?>
<div class="container-fluid layoutneighborhood">
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
                <img class="first-slide" src="<?=Yii::$app->view->theme->baseUrl?>/resources/IMG/00.png" alt="First slide">
                <div class="container">
                    <div class="carousel-caption">
                        <div class="lastblock">
                            <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 colum01">
                                <ul class="gaucho">
                                    <li><img src="<?=Yii::$app->view->theme->baseUrl?>/resources/IMG/imgnewcomlum01.png"></li>
                                    <li class="title">El Gaucho</li>
                                    <li class="bg_line">   Steakhouse<br>
                                        74 Hai Ba Trung St, Ben Nghe Ward, Dist.1<br>
                                        +84 8 3827 2090</li>
                                </ul>
                                <i class="boderbt"></i>
                            </div>
                            <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 colum02">
                                <ul class="gaucho">
                                    <li class="title">Le Jardin </li>
                                    <li class="bg_line"> French Cuisine<br>
                                        31 Thai Van Lung St, Ben Nghe Ward, Dist.1<br>
                                        +84 8 3825 8465</li>
                                    <li><img src="<?=Yii::$app->view->theme->baseUrl?>/resources/IMG/imgnewcomlum02.png"></li>
                                </ul>
                                <i class="boderbt"></i>
                            </div>
                            <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 colum03">
                                <ul class="gaucho">
                                    <li><img src="<?=Yii::$app->view->theme->baseUrl?>/resources/IMG/imgnewcomlum04.png"></li>
                                    <li class="title">Red wine bar</li>
                                    <li class="bg_line">  Wine & bar<br>
                                        21, Nguyen Trung Ngan St, Ben Nghe Ward, Dist.1<br>
                                        +84 8 3827 2090</li>
                                </ul>
                                <i class="boderbt"></i>
                            </div>
                            <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 colum04">
                                <ul class="gaucho">
                                    <li class="title">Monocle
                                    </li>
                                    <li class="bg_line">Coffee shop<br>
                                        31 Thai Van Lung St, Ben Nghe Ward, Dist.1<br>
                                        +84 8 3825 8465</li>
                                    <li><img src="<?=Yii::$app->view->theme->baseUrl?>/resources/IMG/imgnewcomlum03.png"></li>
                                </ul>
                                <i class="boderbt"></i>
                            </div>
                        </div>
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
