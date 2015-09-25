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
use yii\web\Controller;

class BookingController extends Controller
{
    public function actionIndex()
    {
        return $this->render('index');
    }

    public function actionViewFloorByBuilding($id)
    {
        if ($id > 0) {
            $building = LcBuilding::find()->where(['id' => $id])->one();
            $floor = $building->floor;
            if ($building) {
//                echo "<option value='333'>$building->floor</option>";
                for ($x = 1; $x <= $floor; $x++) {
                    if ($x === $floor)
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
        $booking = new LcBooking();

        if ($booking->load(Yii::$app->request->post()) && $booking->save()) {
            Yii::$app->getSession()->setFlash('reSuccess', 'Create booking successfully.');
            return $this->redirect(['/booking']);
        } else
            return $this->redirect(['/']);

    }

    public function actionSendEmail($id)
    {
        $booking = LcBooking::findOne($id);
        return \Yii::$app->mailer->compose(['html' => 'passwordResetToken-html', 'text' => 'notifyReceivedBooking-text'], ['booking' => $booking])
            ->setFrom([\Yii::$app->params['supportEmail'] => \Yii::$app->name . ' robot'])
            ->setTo($booking->email)
            ->setSubject('Notify received booking of ' . $booking->fullname)
            ->send();
    }
}