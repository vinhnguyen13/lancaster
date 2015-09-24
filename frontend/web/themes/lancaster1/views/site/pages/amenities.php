<?php
/**
 * Created by PhpStorm.
 * User: vinhnguyen
 * Date: 9/23/2015
 * Time: 2:13 PM
 */
use vsoft\express\models\LcHomeGallery;
use yii\web\View;
Yii::$app->getView()->registerJsFile(Yii::$app->view->theme->baseUrl.'/resources/js/function.js', ['position'=>View::POS_END]);
?>
<div class="container-fluid layoutamenities">
    <!-- Carousel
    ================================================== -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <div class="ckeckitem">
            <ul>
                <li class="active" data-target="#myCarousel" data-slide-to="0"><span class="arrow-up"></span>Swimming Pool</li>
                <li data-target="#myCarousel" data-slide-to="1">Fitness Center</li>
                <li data-target="#myCarousel" data-slide-to="2">Healthy Care</li>
                <li data-target="#myCarousel" data-slide-to="3">Skybar</li>
            </ul>
        </div>
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class=""></li>
            <li class="" data-target="#myCarousel" data-slide-to="1"></li>
            <li class="active" data-target="#myCarousel" data-slide-to="2"></li>
            <li class="" data-target="#myCarousel" data-slide-to="3"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
            <?php
            $slideHome = LcHomeGallery::find()->where(['code'=>'AMENITIES'])->one();
            if($slideHome->getGallery()->one()){
                $photos = $slideHome->getGallery()->one()->getPhotos()->all();
            }
            if(!empty($photos)){
                foreach($photos as $key=>$photo){
            ?>
            <div class="item<?=($key==0) ? ' active' : ''?>">
                <img class="first-slide" src="<?=$photo->getThumbUrl('original')?>" alt="First slide">
                <div class="container">
                    <div class="carousel-caption">
                        <div class="viewbanner">
                            <ul>
                                <li class="boleft"></li>
                                <li>Swimming Pool</li>
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
            <?php
                }
            }
            ?>

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
