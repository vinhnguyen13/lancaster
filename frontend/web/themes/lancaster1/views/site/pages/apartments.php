<?php
/**
 * Created by PhpStorm.
 * User: vinhnguyen
 * Date: 9/23/2015
 * Time: 2:10 PM
 */
use yii\web\View;
Yii::$app->getView()->registerJsFile(Yii::$app->view->theme->baseUrl.'/resources/js/function.js', ['position'=>View::POS_END]);
?>
<div class="container-fluid layoutapartments">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <div class="ckeckitem">
            <ul class="carousel-indicators">
                <li class="active" data-target="#myCarousel" data-slide-to="0"><span class="arrow-up"></span>Living room</li>
                <li data-target="#myCarousel" data-slide-to="1"><span class="arrow-up"></span>Kitchen</li>
                <li data-target="#myCarousel" data-slide-to="2"><span class="arrow-up"></span>Bathroom</li>
                <li data-target="#myCarousel" data-slide-to="3"><span class="arrow-up"></span>Bedroom</li>
                 
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
                        <div class="viewbanner">
                            <ul>
                                <li class="boleft"></li>
                                <li>Penhouse</li>
                                <li class="robotoitalic">Living Room</li>
                                <li>Lancaster offers you a sweeping panoramic view of the city skyline from virtually every window.
                                    Besides 109 ultra-luxury and graciously furnished apartments ranging from studios to penthouses, the building also features 6 floors of working space for setting up professional and supreme offices.</li>
                                <li class="btn_hide">Hide<span class="glyphicon glyphicon-menu-up"></span></li>
                            </ul>
                        </div>
                        <div class="viewshow">
                            <ul>
                                <li class="boleft"></li>
                                <li>Penhouse</li>
                                <li class="robotoitalic">Living Room</li>
                                <li class="btn_show">show<span class="glyphicon glyphicon-menu-down"></span></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="item">
                <img class="first-slide" src="<?=Yii::$app->view->theme->baseUrl?>/resources/IMG/item01.png" alt="First slide">
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
