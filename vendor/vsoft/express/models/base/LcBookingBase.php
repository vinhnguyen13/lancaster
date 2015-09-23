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
 * @property string $updated_at
 * @property integer $created_by
 * @property integer $updated_by
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
            [['lc_building_id', 'apart_type', 'floorplan', 'created_by', 'updated_by'], 'integer'],
            [['checkin', 'checkout', 'created_at', 'updated_at'], 'safe'],
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
            'id' => Yii::t('booking', 'ID'),
            'lc_building_id' => Yii::t('booking', 'Lc Building ID'),
            'checkin' => Yii::t('booking', 'Checkin'),
            'checkout' => Yii::t('booking', 'Checkout'),
            'apart_type' => Yii::t('booking', 'Apart Type'),
            'floorplan' => Yii::t('booking', 'Floorplan'),
            'fullname' => Yii::t('booking', 'Fullname'),
            'phone' => Yii::t('booking', 'Phone'),
            'email' => Yii::t('booking', 'Email'),
            'address' => Yii::t('booking', 'Address'),
            'passport_no' => Yii::t('booking', 'Passport No'),
            'nationality' => Yii::t('booking', 'Nationality'),
            'info' => Yii::t('booking', 'Info'),
            'ip' => Yii::t('booking', 'Ip'),
            'agent' => Yii::t('booking', 'Agent'),
            'browser_type' => Yii::t('booking', 'Browser Type'),
            'browser_name' => Yii::t('booking', 'Browser Name'),
            'browser_version' => Yii::t('booking', 'Browser Version'),
            'platform' => Yii::t('booking', 'Platform'),
            'created_at' => Yii::t('booking', 'Created At'),
            'updated_at' => Yii::t('booking', 'Updated At'),
            'created_by' => Yii::t('booking', 'Created By'),
            'updated_by' => Yii::t('booking', 'Updated By'),
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getLcBuilding()
    {
        return LcBuilding::findOne($this->lc_building_id);
//        return $this->hasOne(LcBuilding::className(), ['id' => 'lc_building_id']);
    }
}
