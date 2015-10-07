<?php if(!empty($photo->name)):?>
    <li <?=($key==0) ? 'class="active"' : ''?> data-target="#myCarousel" data-slide-to="<?=$key;?>"><span class="arrow-up glyphicon glyphicon-triangle-top"></span><?=$photo->name;?></li>
<?php endif;?>