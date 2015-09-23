<?php
use yii\helpers\Url;
$array = [
    '/site/index',
    '/site/page?view=apartments',
    '/site/page?view=amenities',
    '/site/page?view=views',
    '/site/page?view=neighborhood',
    '/site/page?view=pricing',
    '/site/page?view=location',
    '/site/page?view=apartments',
];
if(in_array(Url::current(), $array)){
?>
<div class="container-fluid menutop">
    <?php
    echo \yii\widgets\Menu::widget([
        'activeCssClass' => 'active',
        'items' => [
            ['label' => 'THE BUILDING', 'url' => Url::home(), 'active' => (Url::current()==Url::toRoute('/site/index')) ? true : false],
            ['label' => 'APARTMENTS', 'url' => Url::toRoute('/site/page?view=apartments'), 'active' => (Url::current()==Url::toRoute('/site/page?view=apartments')) ? true : false],
            ['label' => 'AMENITIES', 'url' => Url::toRoute('/site/page?view=amenities'), 'active' => (Url::current()==Url::toRoute('/site/page?view=amenities')) ? true : false],
            ['label' => 'VIEWS', 'url' => Url::toRoute('/site/page?view=views'), 'active' => (Url::current()==Url::toRoute('/site/page?view=views')) ? true : false],
            ['label' => 'NEIGHBORHOOD', 'url' => Url::toRoute('/site/page?view=neighborhood'), 'active' => (Url::current()==Url::toRoute('/site/page?view=neighborhood')) ? true : false],
            ['label' => 'PRICING', 'url' => Url::toRoute('/site/page?view=pricing'), 'active' => (Url::current()==Url::toRoute('/site/page?view=pricing')) ? true : false],
            ['label' => 'LOCATION', 'url' => Url::toRoute('/site/page?view=location'), 'active' => (Url::current()==Url::toRoute('/site/page?view=location')) ? true : false],
        ],
    ]);
    ?>
</div>
<?php }?>