<?php

namespace vsoft\express\models;

use vsoft\express\models\base\LcBuildingBase;
use Yii;

/**
 * This is the model class for table "lc_building".
 *
 * @property integer $id
 * @property string $building_name
 * @property string $address
 * @property string $phone
 * @property string $fax
 * @property string $email
 * @property string $hotline
 * @property string $description
 * @property string $created_at
 * @property string $updated_at
 * @property integer $created_by
 * @property integer $updated_by
 * @property integer $isbooking
 *
 * @property LcBooking[] $lcBookings
 */
class LcBuilding extends LcBuildingBase
{
    /**
     * TODO: Write function for building
     */

    // Modify Label
    public function attributeLabels()
    {
        return array_merge(parent::attributeLabels(),
            [ 'isbooking' => 'Booking' ]);
    }

}
