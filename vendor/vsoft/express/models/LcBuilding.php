<?php

namespace vsoft\express\models;

use vsoft\express\models\base\LcBuildingBase;
use Yii;

/**
 * This is the model class for table "lc_building".
 *
 * @property integer $lc_building_id
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
        return [
//            'lc_building_id' => 'Lc Building ID',
//            'building_name' => 'Building Name',
//            'address' => 'Address',
//            'phone' => 'Phone',
//            'fax' => 'Fax',
//            'email' => 'Email',
//            'hotline' => 'Hotline',
//            'description' => 'Description',
//            'created_at' => 'Created At',
//            'updated_at' => 'Updated At',
//            'created_by' => 'Created By',
//            'updated_by' => 'Updated By',
            'isbooking' => 'Booking',
        ];
    }
}
