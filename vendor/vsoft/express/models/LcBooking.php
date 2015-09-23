<?php

namespace vsoft\express\models;

use vsoft\express\models\base\LcBookingBase;
use Yii;

/**
 * This is the model class for table "lc_booking".
 *
 * @property integer $id
 * @property integer $lc_building_id
 * @property string $checkin
 * @property string $checkout
 * @property integer $apart_type
 * @property integer $floorplan
 * @property string $fullname
 * @property string $phone
 * @property string $email
 * @property string $address
 * @property string $passport_no
 * @property string $nationality
 * @property string $info
 * @property string $ip
 * @property string $agent
 * @property string $browser_type
 * @property string $browser_name
 * @property string $browser_version
 * @property string $platform
 * @property string $created_at
 *
 * @property LcBuilding $lcBuilding
 */
class LcBooking extends LcBookingBase
{
    /**
     * TODO: Write function for booking
     */
    public function rules()
    {
        return array_merge(
            parent::rules(),
            [
                [['phone', 'fullname', 'email'], 'required'],
                [['email'], 'email'],
//                [['checkin'], 'compare', 'compareAttribute'=>'checkout', 'operator'=>'<', 'skipOnEmpty'=>true],
                [['checkout'], 'compare', 'compareAttribute'=>'checkin', 'operator'=>'>'],
            ]);
    }

}
