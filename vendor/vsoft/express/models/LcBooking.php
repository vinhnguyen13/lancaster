<?php

namespace vsoft\express\models;

use Yii;

/**
 * This is the model class for table "lc_booking".
 *
 * @property integer $lc_booking_id
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
class LcBooking extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'lc_booking';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['lc_building_id', 'apart_type', 'floorplan'], 'integer'],
            [['checkin', 'checkout', 'created_at'], 'safe'],
            [['info'], 'string'],
            [['fullname', 'agent'], 'string', 'max' => 100],
            [['phone', 'passport_no'], 'string', 'max' => 15],
            [['email', 'nationality', 'browser_name', 'platform'], 'string', 'max' => 60],
            [['address'], 'string', 'max' => 255],
            [['ip'], 'string', 'max' => 40],
            [['browser_type'], 'string', 'max' => 45],
            [['browser_version'], 'string', 'max' => 10]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'lc_booking_id' => 'Lc Booking ID',
            'lc_building_id' => 'Lc Building ID',
            'checkin' => 'Checkin',
            'checkout' => 'Checkout',
            'apart_type' => 'Apart Type',
            'floorplan' => 'Floorplan',
            'fullname' => 'Fullname',
            'phone' => 'Phone',
            'email' => 'Email',
            'address' => 'Address',
            'passport_no' => 'Passport No',
            'nationality' => 'Nationality',
            'info' => 'Info',
            'ip' => 'Ip',
            'agent' => 'Agent',
            'browser_type' => 'Browser Type',
            'browser_name' => 'Browser Name',
            'browser_version' => 'Browser Version',
            'platform' => 'Platform',
            'created_at' => 'Created At',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getLcBuilding()
    {
        return $this->hasOne(LcBuilding::className(), ['lc_building_id' => 'lc_building_id']);
    }
}
