<?php
/**
 * Created by PhpStorm.
 * User: Nhut Tran
 * Date: 9/18/2015 11:51 AM
 */
namespace vsoft\express\controllers\frontend;

use vsoft\express\models\LcBuilding;
use yii\web\Controller;

class BookingController extends Controller
{
    public function actionIndex()
    {
        return $this->render('index');
    }

    public function actionViewFloorByBuilding($id)
    {
        echo "<pre>";
        print_r('Building id : '.$id);
        echo "<pre>";
        exit();
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
}