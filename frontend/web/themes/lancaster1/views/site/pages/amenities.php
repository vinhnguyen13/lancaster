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
<style>
    body{
        overflow: hidden;
    }
</style>
<script>
    $(document).ready(function() {
        cropResize();
        $( window ).resize(function() {
            cropResize();
        });
    });

    function cropResize(){
        var height = $(window).height() - $('.navbar').height() - $('.menubar').height();
        $(".imgcontent").css({height: height})
        $('.item .imgcontent img').each(function(i, item) {
            var img_height = $(item).height();
            var div_height = $(item).parent().height();
            console.log(item);
            $(item).attr('style', '');
            if(img_height<div_height){
                //INCREASE HEIGHT OF IMAGE TO MATCH CONTAINER
                $(item).css({'width': 'auto', 'height': div_height });
                //GET THE NEW WIDTH AFTER RESIZE
                var img_width = $(item).width();
                //GET THE PARENT WIDTH
                var div_width = $(item).parent().width();
                //GET THE NEW HORIZONTAL MARGIN
                var newMargin = (div_width-img_width)/2+'px';
                //SET THE NEW HORIZONTAL MARGIN (EXCESS IMAGE WIDTH IS CROPPED)
                $(item).css({'margin-left': newMargin });
            }else{
                //CENTER IT VERTICALLY (EXCESS IMAGE HEIGHT IS CROPPED)
                var newMargin = (div_height-img_height)/2+'px';
                $(item).css({'margin-top': newMargin});
            }
        });
    }
</script>
<div class="container-fluid layoutamenities">
    <!-- Carousel
    ================================================== -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <div class="ckeckitem">
            <div class="livercenter">
                <ul class="carousel-indicators">
                    <li class="active" data-target="#myCarousel" data-slide-to="0"><span class="arrow-up"></span>Swimming Pool</li>
                    <li data-target="#myCarousel" data-slide-to="1">Fitness Center</li>
                    <li data-target="#myCarousel" data-slide-to="2">Healthy Care</li>
                    <li data-target="#myCarousel" data-slide-to="3">Skybar</li>
                </ul>
            </div>
        </div>
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
                <div class="imgcontent"><img class="first-slide" src="<?=$photo->getThumbUrl('original')?>" alt="First slide"></div>
                <div class="container">
                    <div class="carousel-caption">
                        <div class="viewbanner">
                            <ul>
                                <li class="boleft"></li>
                                <li>Swimming Pool</li>
                                <li class="robotoitalic">Swimming Pool</li>
                                <li>Lancaster offers you a sweeping panoramic view of the city skyline from virtually every window.
                                    Besides 109 ultra-luxury and graciously furnished apartments ranging from studios to penthouses, the building also features 6 floors of working space for setting up professional and supreme offices.</li>
                                <li class="btn_hide">Hide<span class="glyphicon glyphicon-menu-up"></span></li>
                            </ul>
                        </div>
                        <div class="viewshow">
                            <ul>
                                <li class="boleft"></li>                                
                                <li class="noticaitalic">Swimming Pool</li>
                                <li class="btn_show">Info<span class="glyphicon glyphicon-menu-down"></span></li>
                            </ul>
                            <span class="lineg"></span>
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
