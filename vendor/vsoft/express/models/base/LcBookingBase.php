<?php

namespace vsoft\express\models\base;

use vsoft\express\models\LcBuilding;
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
class LcBookingBase extends \yii\db\ActiveRecord
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
            [['fullname'], 'string', 'max' => 100],
            [['phone', 'passport_no'], 'string', 'max' => 15],
            [['email', 'nationality', 'browser_name', 'platform'], 'string', 'max' => 60],
            [['address', 'agent'], 'string', 'max' => 255],
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
            'id' => Yii::t('building', 'ID'),
            'lc_building_id' => Yii::t('building', 'Lc Building ID'),
            'checkin' => Yii::t('building', 'Checkin'),
            'checkout' => Yii::t('building', 'Checkout'),
            'apart_type' => Yii::t('building', 'Apart Type'),
            'floorplan' => Yii::t('building', 'Floorplan'),
            'fullname' => Yii::t('building', 'Fullname'),
            'phone' => Yii::t('building', 'Phone'),
            'email' => Yii::t('building', 'Email'),
            'address' => Yii::t('building', 'Address'),
            'passport_no' => Yii::t('building', 'Passport No'),
            'nationality' => Yii::t('building', 'Nationality'),
            'info' => Yii::t('building', 'Info'),
            'ip' => Yii::t('building', 'Ip'),
            'agent' => Yii::t('building', 'Agent'),
            'browser_type' => Yii::t('building', 'Browser Type'),
            'browser_name' => Yii::t('building', 'Browser Name'),
            'browser_version' => Yii::t('building', 'Browser Version'),
            'platform' => Yii::t('building', 'Platform'),
            'created_at' => Yii::t('building', 'Created At'),
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getLcBuilding()
    {
        return $this->hasOne(LcBuilding::className(), ['id' => 'lc_building_id']);
    }
}
