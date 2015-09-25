<div class="item<?=($key==0) ? ' active' : ''?>">
    <div class="imgcontent"><img class="first-slide" src="<?=$photo->getThumbUrl('original')?>" alt="First slide"></div>
    <?php if(!empty($photo->name)):?>
        <div class="container">
            <div class="carousel-caption">
                <div class="viewbanner">
                    <ul>
                        <li class="boleft"></li>
                        <!--                                        <li class="noticaitalic">Swimming Pool</li>-->
                        <li class="noticaitalic titleshow"><?=$photo->name;?> <span class="linebuttom"></span></li>
                        <li><?=$photo->description;?></li>
                        <li class="btn_hide">Hide<span class="glyphicon glyphicon-menu-up"></span></li>
                    </ul>
                </div>
                <div class="viewshow">
                    <ul>
                        <li class="boleft"></li>
                        <li class="noticaitalic"><?=$photo->name;?></li>
                        <li class="btn_show"><b>Info</b><span class="glyphicon glyphicon-menu-down"></span></li>
                    </ul>
                    <span class="lineg"></span>
                </div>
            </div>
        </div>
    <?php endif; ?>
</div>