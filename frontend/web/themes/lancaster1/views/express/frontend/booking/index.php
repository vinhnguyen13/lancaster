<?php
$this->title = Yii::t('booking', 'Booking');
/**
 * Created by PhpStorm.
 * User: Nhut Tran
 * Date: 9/18/2015 11:16 AM
 */
use kartik\datetime\DateTimePicker;
use yii\helpers\ArrayHelper;
use yii\helpers\Html;
use yii\helpers\Url;

date_default_timezone_set('Asia/Ho_Chi_Minh');

?>

<div class="container-fluid booking">
    <div class="row main_content">
        <span class="btn_back"><img src="<?= Yii::$app->view->theme->baseUrl ?>/resources/IMG/btn_back.png"><a
                href="<?= \yii\helpers\Url::home() ?>">Back to Lancaster Legacy</a></span>

        <p>booking</p>

        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 mainbooking">
            <div class="btnpic">
                <button class="btnclick" type="submit">Click here <span class="glyphicon glyphicon-play-circle"></span>
                </button>
            </div>
            <!-- <form action="#" method="post" class="form" role="form"> -->
            <?php
            $model = new \vsoft\express\models\LcBooking();
            $form = \yii\widgets\ActiveForm::begin([
                'id' => 'active-form',
                'options' => [
                    'class' => 'form',
                    'role' => 'form',
                    'method' => 'post'
                ]
            ]); ?>
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
                    <?= $form->field($model, 'checkin')->widget(DateTimePicker::className(), [
                        'name' => 'check_in',
                        'type' => DateTimePicker::TYPE_COMPONENT_PREPEND,
                        'options' => [
                            'placeholder' => 'Input check in date & time ...',
                            'size' => '100%',
                        ],
                        'readonly' => true,
                        'removeButton' => false,
                        'pluginOptions' => [
                            'autoclose' => true,
                            'format' => 'dd-M-yyyy HH:ii:ss ',
                            'pickerPosition' => 'bottom-left',
                        ],
                    ])->label(false) ?>
                </div>
                <div class="live">
                    <!--<input class="form-control" name="checkout" placeholder="Select" type="text" required
                           autofocus/><span class="glyphicon glyphicon-calendar"></span>-->
                    <?= $form->field($model, 'checkout')->widget(DateTimePicker::className(), [
                        'name' => 'check_out',
                        'type' => DateTimePicker::TYPE_COMPONENT_PREPEND,
                        'options' => [
                            'placeholder' => 'Input check out date & time ...',
                            'size' => '100%',
                        ],
                        'readonly' => true,
                        'removeButton' => false,
                        'pluginOptions' => [
                            'autoclose' => true,
                            'format' => 'dd-M-yyyy HH:ii:ss',
                            'pickerPosition' => 'bottom-left',
                        ],
                    ])->label(false) ?>
                </div>
                <div class="live">
                    <!--<select class="form-control">
                        <option value="Year">Year</option>
                    </select>-->
                    <?php
                    $buildings = \vsoft\express\models\LcBuilding::find()->select('lc_building_id,building_name,floor')->all();
                    $listData = ArrayHelper::map($buildings, 'lc_building_id', 'building_name');
                    echo $form->field($model, 'lc_building_id')->dropDownList($listData, [
                        'onchange' => '
                                $.get( "' . Url::toRoute('/express/booking/view-floor-by-building') . '", { id: $(this).val() } )
                                    .done(function( data ) {
                                        $( "#' . Html::getInputId($model, 'floorplan') . '" ).html( data );
                                    }
                                );
                            ',
                    ])->label(false);
                    ?>
                </div>
                <div class="apartment">
                    <ul>
                        <li>
                            <!--<select class="form-control">
                                <option value="1">1-Bed</option>
                                <option value="2">2-Bed</option>
                                <option value="3">3-Bed</option>
                            </select>-->
                            <?php
                            echo $form->field($model, 'apart_type')->dropDownList(
                                [ '1' => '1-Bed', '2' => '2-Bed',  '3' => '3-Bed' ],
                                [
                                    'options' => [1 => ['selected ' => true]],
//                                    'class' => 'form-control medium-width'
                                ]
                            )->label(false);
                            ?>
                        </li>
                        <li class="textapar">Floorplan <i>*</i></li>
                        <li>
                            <!--<select class="form-control">
                                <option value="Year">22</option>
                            </select>-->
                            <?php
                            $floorNum = [];
                            $floor = 22;
                            foreach($buildings as $building){
                                if($building->building_name === 'Lancaster Legacy'){
                                    for($x=1;$x <= $building->floor; $x++){
                                        $floorNum[$x] = $x;
                                    }
                                }
                            }
                            echo $form->field($model, 'floorplan')->dropDownList($floorNum)->label(false);
                            ?>
                        </li>
                    </ul>
                </div>
                <div class="namephone">
                    <input class="form-control" name="" placeholder="Full name" type=""/>
                </div>
                <div class="deafall">
                    <input class="form-control" name="" placeholder="Phone number" type=""/>
                </div>
                <div class="deafall">
                    <input class="form-control" name="" placeholder="Email" type=""/>
                </div>
                <div class="deafall">
                    <input class="form-control" name="" placeholder="Address" type=""/>
                </div>
                <div class="deafall">
                    <input class="form-control" name="" placeholder="Passport No" type=""/>
                </div>
                <div class="deafall">
                    <input class="form-control" name="" placeholder="Nationality" type=""/>
                </div>
                <div class="deafall">
                    <textarea class="form-control" name="" placeholder="Text here" cols="" rows="5"></textarea>
                </div>
                <div class="btnsubmit">
                    <button class="btn btn-lg btn_primary btn-block" type="submit">
                        Submit
                    </button>
                </div>
            </div>
            <?php \yii\widgets\ActiveForm::end(); ?>
            <!-- </form> -->
        </div>
    </div>
</div>

<!--
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
-->
<script src="<?= Yii::$app->view->theme->baseUrl ?>/js/jquery.js"></script>
<script src="<?= Yii::$app->view->theme->baseUrl ?>/js/bootstrap.js"></script>
<script src="<?= Yii::$app->view->theme->baseUrl ?>/js/holder.htm"></script>
<script src="<?= Yii::$app->view->theme->baseUrl ?>/js/ie10-viewport-bug-workaround.js"></script>

