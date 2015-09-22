<?php
/**
 * Created by PhpStorm.
 * User: Nhut Tran
 * Date: 9/18/2015 11:51 AM
 */
namespace vsoft\express\controllers\frontend;

use vsoft\express\models\LcBooking;
use vsoft\express\models\LcBuilding;
use Yii;
use yii\db\ActiveRecord;
use yii\db\Expression;
use yii\web\Controller;

class BookingController extends Controller
{

    public function behaviors()
    {
        return [
            'timestamp' => [
                'class' => 'yii\behaviors\TimestampBehavior',
                'attributes' => [
                    ActiveRecord::EVENT_BEFORE_INSERT => ['created_at', 'updated_at'],
                    ActiveRecord::EVENT_BEFORE_UPDATE => ['updated_at'],
                ],
                'value' => new Expression('NOW()'),
            ],

        ];
    }

    public function actionIndex()
    {
        return $this->render('index');
    }

    public function actionViewFloorByBuilding($id)
    {
        if($id > 0){
            $building = LcBuilding::find()->where(['lc_building_id' => $id])->one();
            $floor = $building->floor;
            if($building){
//                echo "<option value='333'>$building->floor</option>";
                for($x = 1; $x <= $floor; $x++ ) {
                    if($x === $floor)
                        echo "<option selected value='$x'>$x</option>";
                    else
                        echo "<option value='$x'>$x</option>";
                }

            }
        }
//        else{
//            echo "<option>Cannot find floor number in building</option>";
//        }
    }

    public function actionBookingHotel()
    {
//        $request = Yii::$app->request;

//        $booking->load(Yii::$app->request->post());
//        echo "<pre>";
//        print_r($booking->attributes);
////        print_r($request->getBodyParam('agent'));
//        print_r($request->post());
//        echo "<pre>";
//        exit();
//

        $booking = new LcBooking();

        if($booking->load(Yii::$app->request->post()) && $booking->save()){
            return $this->redirect(['/booking']);
        }
        else
            return $this->redirect(['/']);

    }
}