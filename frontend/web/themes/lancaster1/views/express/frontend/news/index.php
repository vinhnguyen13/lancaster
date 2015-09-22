<?php
$this->title = Yii::t('news', 'News');
/* @var $this yii\web\View */
use yii\helpers\Html;
?>
<div class="container-fluid news">
    <div class="row main_content">
        <span class="btn_back"><img src="<?=Yii::$app->view->theme->baseUrl?>/resources/IMG/btn_back.png"><a href="<?=\yii\helpers\Url::home()?>">Back to Lancaster Legacy</a></span>
        <h1>news</h1>
        <div class="btn_paging">

            <?=\yii\widgets\LinkPager::widget([
                'pagination' => $pagination,
                'nextPageLabel' => 'next',
                'prevPageLabel' => 'prev',
            ]) ?>
            <span aria-hidden="true"><img src="<?=Yii::$app->view->theme->baseUrl?>/resources/IMG/btn_next.png"></span>
        </div>
        <?php foreach ($news as $key=>$new) {?>

            <?php
                echo Html::tag('div',
                    Html::tag('div',
                        Html::img(Yii::$app->view->theme->baseUrl.'/resources/IMG/aboutbanner.png').
                        Html::tag('div',
                            Html::tag('ul',
                                Html::tag('li',date('d', $new->created_at)).
                                Html::tag('li',strtoupper(date('M', $new->created_at)))
                            ),
                            ['class'=>'marks']
                        ).
                        Html::tag('div',
                            Html::tag('ul',
                                Html::tag('li',Html::a($new->title, \yii\helpers\Url::toRoute(['/express/about/detail', 'id' => $new->id, 'slug' => $new->slug])), ['class'=>'title']).
                                Html::tag('li',\yii\helpers\StringHelper::truncate($new->content, 300, "", false, true), [])
                            ),
                            ['class'=>'lockcontentleft']
                        ),
                        ['class'=>'block']
                    ),
                    ['class'=>'mainblockitem'.(($key == 0) ? ' mainblockbig' : '')]
                );
            ?>
        <?php }?>
        <div class="mainblockitem" style="display: none;">
            <div class="block">
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
        </div>


    </div>
</div>







