<?php if(!empty($photo->name)):?>
    <li <?=($key==0) ? 'class="active"' : ''?> data-target="#myCarousel" data-slide-to="0"><span class="arrow-up"></span><?=$photo->name;?></li>
<?php endif;?>