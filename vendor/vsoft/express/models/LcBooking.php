<?php

namespace vsoft\express\models;

use kartik\helpers\Enum;
use vsoft\express\models\base\LcBookingBase;
use Yii;
use yii\db\Expression;

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
                [['checkin','checkout','phone', 'fullname', 'email'], 'required'],
                [['email'], 'email'],
//                [['checkin'], 'compare', 'compareAttribute'=>'checkout', 'operator'=>'<', 'skipOnEmpty'=>true],
                [['checkout'], 'compare', 'compareAttribute'=>'checkin', 'operator'=>'>'],
            ]);
    }

//    public function getLcBuildingName()
//    {
//        return $this->lcBuilding->building_name;
//    }

    public function attributeLabels()
    {
        return [
            'checkin' => Yii::t('building', 'Check In'),
            'checkout' => Yii::t('building', 'Check Out'),
            'fullname' => Yii::t('building', 'Full Name'),
            'floorplan' => Yii::t('building', 'Floor'),
        ];
    }

    public function beforeSave($insert)
    {
        $at = new Expression('NOW()');
        if ($this->isNewRecord || empty($this->created_at)) {
            $this->created_at = $at;
            $this->created_by = Yii::$app->user->id;
        }
        $this->updated_at = $at;
        $this->updated_by = Yii::$app->user->id;

        $this->ip = Yii::$app->request->userIP;
        $this->agent = Yii::$app->request->userAgent;
        $this->browser_type = Enum::getBrowser()['code'];
        $this->browser_name = Enum::getBrowser()['name'];
        $this->browser_version = Enum::getBrowser()['version'];
        $this->platform = Enum::getBrowser()['platform'];
        return parent::beforeSave($insert);
    }
}
