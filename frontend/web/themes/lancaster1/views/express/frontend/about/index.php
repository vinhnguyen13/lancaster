<?php
$this->title = Yii::t('about', 'About Us');
/* @var $this yii\web\View */
use yii\helpers\Html;
?>
<div class="container-fluid abaout">
    <div class="row main_content">
        <span class="btn_back"><img src="<?=Yii::$app->view->theme->baseUrl?>/resources/IMG/btn_back.png"><a href="<?=\yii\helpers\Url::home()?>">Back to Lancaster Legacy</a></span>
        <p><?=\Yii::t('express/about', 'About Us');?></p>
        <div class="col-xs-12 col-sm-8 col-md-8 col-lg-8 mainleft"><img src="<?=Yii::$app->view->theme->baseUrl?>/resources/IMG/aboutbanner.png"></div>
        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 mainright">
            <ul>
                <li class="title">Lancaster</li>
                <li>Being one of the pioneering brands to usher in a new period of modern living and working environment in Ho Chi Minh City from early 2004, the Lancaster branded projects by Trung Thuy Group always dignify modernity, comfort and elegance with the hope to provide our customers with a modern living and a high-class working environment in which service quality is always the top priority.</li>
            </ul>
        </div>
    </div>
<!--    --><?php //foreach ($news as $new) {
//        echo Html::tag('li', Html::a($new->title, \yii\helpers\Url::toRoute(['/express/about/detail', 'id' => $new->id, 'slug' => $new->slug])) . Html::tag('span', Yii::$app->formatter->asDate($new->created_at)). '<div class="clear"></div>', ['class' => 'clearfix']);
//    }
//    ?>
    <div class="row contentbody">
        <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 img">
            <img src="<?=Yii::$app->view->theme->baseUrl?>/resources/IMG/item01.png">
        </div>
        <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 item">
            <ul>
                <li class="title">Lancaster LeGACY</li>
                <li>The city skyline from virtually every window. Besides 109 ultra-luxury and graciously furnished apartments ranging from studios to penthouses, the building also features 6 floors of working space for setting up professional and supreme offices.In addition, Lancaster also offers you all of the exceptional amenities and renowned white-glove services of Trung Thuy Group, promising to be the ideal place for both personal life and business.towards the Sai Gon river and Te channel, overlooking the city from most angles... </li>
                <li class="textfooterdetail"><a href="#">View more</a></li>
            </ul>
        </div>
        <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 img">
            <img src="<?=Yii::$app->view->theme->baseUrl?>/resources/IMG/item02.png">
        </div>
        <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 item">
            <ul>
                <li class="title">Lancaster nGYEN TRAI</li>
                <li>Located on an area of over 5.000 m2, the building Lancaster Nguyen Trai is a complex including commercial center, office area and apartments for the upper class value. With the reputation of the brand Lancaster, the project promises to bring our investors excellent investment opportunities as well as to provide the inhabitants in the area with a luxurious living environment with superior services...</li>
                <li class="textfooterdetail"><a href="#">View more</a></li>
            </ul>
        </div>
    </div>
    <div class="row contentbody02">
        <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 item">
            <ul>
                <li class="title">Lancaster lE tHANH tON</li>
                <li>ancaster offers you a sweeping panoramic view of the city skyline from virtually every window. Besides 109 ultra-luxury and graciously furnished apartments ranging from studios to penthouses, the building also features 6 floors of working space for setting up professional and supreme offices.In addition, Lancaster also offers you all of the exceptional amenities and renowned white-glove services of Trung Thuy Group, promising to be the ideal place for both personal life and business.. </li>
                <li class="textfooterdetail"><a href="#">View more</a></li>
            </ul>
        </div>
        <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 img">
            <img src="<?=Yii::$app->view->theme->baseUrl?>/resources/IMG/item03.png">
        </div>
        <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 item">
            <ul>
                <li class="title">Lancaster hANOI</li>
                <li>Hanoi – The capital of Vietnam today was once known as Thang Long and was highly praised by King Ly Cong Uan as a place where “Dragon resides, tiger crouches and the promising land that four skies gather, most suitable to create a strong foundations for generations to come…”. From a Feng Shui point of view, it was the ideal land to build a strong everlasting capital.Lancaster Hanoi positions in Ba Dinh District in the center of Hanoi and is proud to be one of the projects which possesses such an advantageous location...</li>
                <li class="textfooterdetail"><a href="#">View more</a></li>
            </ul>
        </div>
        <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 img">
            <img src="<?=Yii::$app->view->theme->baseUrl?>/resources/IMG/item02.png">
        </div>
    </div>
</div>