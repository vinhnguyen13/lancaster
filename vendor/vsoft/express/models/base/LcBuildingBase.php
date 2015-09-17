<?php

namespace vsoft\express\models\base;

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
class LcBuildingBase extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'lc_building';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['building_name'], 'required'],
            [['created_at', 'updated_at'], 'safe'],
            [['created_by', 'updated_by', 'isbooking'], 'integer'],
            [['building_name', 'email'], 'string', 'max' => 60],
            [['address', 'description'], 'string', 'max' => 255],
            [['phone', 'fax', 'hotline'], 'string', 'max' => 20]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'lc_building_id' => 'Lc Building ID',
            'building_name' => 'Building Name',
            'address' => 'Address',
            'phone' => 'Phone',
            'fax' => 'Fax',
            'email' => 'Email',
            'hotline' => 'Hotline',
            'description' => 'Description',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
            'created_by' => 'Created By',
            'updated_by' => 'Updated By',
            'isbooking' => 'Isbooking',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getLcBookings()
    {
        return $this->hasMany(LcBooking::className(), ['lc_building_id' => 'lc_building_id']);
    }
}
