<?php
$this->title = Yii::t('news', 'News');
/* @var $this yii\web\View */
use yii\helpers\Html;
?>
<div class="container-fluid news">
    <div class="row main_content">
        <span class="btn_back"><img src="<?=Yii::$app->view->theme->baseUrl?>/resources/IMG/btn_back.png"><a href="<?=\yii\helpers\Url::home()?>">Back to Lancaster Legacy</a></span>
        <p><?=\Yii::t('express/news', 'News');?></p>
        <div class="btn_paging">

            <?=\yii\widgets\LinkPager::widget([
                'pagination' => $pagination,
                'nextPageLabel' => 'next',
                'prevPageLabel' => 'prev',
            ]) ?>
            <span aria-hidden="true"><img src="<?=Yii::$app->view->theme->baseUrl?>/resources/IMG/btn_next.png"></span>
        </div>
<!--        --><?php //foreach ($news as $new) {
//            echo Html::tag('li', Html::a($new->title, \yii\helpers\Url::toRoute(['/express/news/detail', 'id' => $new->id, 'slug' => $new->slug])) . Html::tag('span', Yii::$app->formatter->asDate($new->created_at)). '<div class="clear"></div>', ['class' => 'clearfix']);
//        }
//        ?>


        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 mainleft">
            <img src="<?=Yii::$app->view->theme->baseUrl?>/resources/IMG/newsbanner.png">
            <div class="marks">
                <ul>
                    <li>27</li>
                    <li>AUG</li>
                </ul>
            </div>
            <div class="lockcontentleft">
                <ul>
                    <li class="title">Lorem ipsum dolor sit amet dolor sit amet</li>
                    <li>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ... <a href="#">more</a></li>
                </ul>
            </div>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 mainright">
            <div class="rowcontentone">
                <div class="leftblock">
                    <ul>
                        <li><img src="<?=Yii::$app->view->theme->baseUrl?>/resources/IMG/newitem.png">
                            <ul class="marks">
                                <li>27</li>
                                <li>AUG</li>
                            </ul>
                        </li>
                        <li class="boderitem">
                            <b>Lorem ipsum dolor sit amet dolor sit amet</b>
                            <span>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ... <a href="#">more</a></span>
                        </li>
                    </ul>
                </div>
                <div class="rightblock">
                    <ul>
                        <li><img src="<?=Yii::$app->view->theme->baseUrl?>/resources/IMG/newitem02.png">
                            <ul class="marks">
                                <li>27</li>
                                <li>AUG</li>
                            </ul>
                        </li>
                        <li class="boderitem">
                            <b>Lorem ipsum dolor sit amet dolor sit amet</b>
                            <span>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ... <a href="#">more</a></span>
                        </li>
                    </ul>
                </div>
            </div> <!---end -->
            <div class="rowcontentone">
                <div class="leftblock">
                    <ul>
                        <li><img src="<?=Yii::$app->view->theme->baseUrl?>/resources/IMG/newitem03.png">
                            <ul class="marks">
                                <li>27</li>
                                <li>AUG</li>
                            </ul>
                        </li>
                        <li class="boderitem">
                            <b>Lorem ipsum dolor sit amet dolor sit amet</b>
                            <span>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ... <a href="#">more</a></span>
                        </li>
                    </ul>
                </div>
                <div class="rightblock">
                    <ul>
                        <li><img src="<?=Yii::$app->view->theme->baseUrl?>/resources/IMG/newitem04.png">
                            <ul class="marks">
                                <li>27</li>
                                <li>AUG</li>
                            </ul>
                        </li>
                        <li class="boderitem">
                            <b>Lorem ipsum dolor sit amet dolor sit amet</b>
                            <span>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ... <a href="#">more</a></span>
                        </li>
                    </ul>
                </div>
            </div> <!---end -->
        </div>
    </div>
</div>