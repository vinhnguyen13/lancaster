<?php
/**
 * Created by PhpStorm.
 * User: Nhut Tran
 * Date: 9/18/2015 11:16 AM
 */
?>

<div class="container-fluid booking">
    <div class="row main_content">
        <span class="btn_back"><img src="<?=Yii::$app->view->theme->baseUrl?>/resources/IMG/btn_back.png"><a href="<?=\yii\helpers\Url::home()?>">Back to Lancaster Legacy</a></span>
        <p>booking</p>
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 mainbooking">
            <div class="btnpic">
                <button class="btnclick" type="submit">Click here <span class="glyphicon glyphicon-play-circle"></span></button>
            </div>
            <form action="#" method="post" class="form" role="form">
                <div class="formleft">
                    <ul class="live">
                        <li>Checkin date <i>*</i></li>
                        <li>Checkout date <i>*</i></li>
                        <li>Building <i>*</i></li>
                        <li>Apartment type <i>*</i></li>
                    </ul>
                    <ul class="formname">
                        <li>Full name <i>*</i></li>
                        <li>Phone number <i>*</i></li>
                        <li>Email <i>*</i></li>
                        <li>Address</li>
                        <li>Passport No.</li>
                        <li>Nationality</li>
                        <li>Infomation</li>
                    </ul>
                </div>
                <div class="rormright">
                    <div class="live">
                        <input class="form-control" name="firstname" placeholder="Select" type="text" required autofocus /><span class="glyphicon glyphicon-calendar"></span>
                    </div>
                    <div class="live">
                        <input class="form-control" name="firstname" placeholder="Select" type="text" required autofocus /><span class="glyphicon glyphicon-calendar"></span>
                    </div>
                    <div class="live">
                        <select class="form-control">
                            <option value="Year">Year</option>
                        </select>
                    </div>
                    <div class="apartment">
                        <ul>
                            <li>
                                <select class="form-control">
                                    <option value="Year">1-Bed</option>
                                </select>
                            </li>
                            <li class="textapar">Floorplan <i>*</i></li>
                            <li><select class="form-control">
                                    <option value="Year">22</option>
                                </select></li>
                        </ul>
                    </div>
                    <div class="namephone">
                        <input class="form-control" name="" placeholder="Full name" type="" />
                    </div>
                    <div class="deafall">
                        <input class="form-control" name="" placeholder="Phone number" type="" />
                    </div>
                    <div class="deafall">
                        <input class="form-control" name="" placeholder="Email" type="" />
                    </div>
                    <div class="deafall">
                        <input class="form-control" name="" placeholder="Address" type="" />
                    </div>
                    <div class="deafall">
                        <input class="form-control" name="" placeholder="Passport No" type="" />
                    </div>
                    <div class="deafall">
                        <input class="form-control" name="" placeholder="Nationality" type="" />
                    </div>
                    <div class="deafall">
                        <textarea class="form-control" name="" placeholder="Text here" cols="" rows="5"></textarea>
                    </div>
                    <div class="btnsubmit">
                        <button class="btn btn-lg btn_primary btn-block" type="submit">
                            Submit</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<!--
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
-->
<script src="js/jquery.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/holder.htm"></script>
<script src="js/ie10-viewport-bug-workaround.js"></script>