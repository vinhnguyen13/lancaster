<?php

namespace vsoft\express\models;

use Yii;

/**
 * This is the model class for table "lc_banner".
 *
 * @property integer $lc_banner_id
 * @property string $name
 * @property string $description
 * @property string $url
 * @property integer $height
 * @property integer $width
 * @property string $created_at
 * @property integer $created_by
 * @property string $updated_at
 * @property integer $updated_by
 */
class LcBanner extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'lc_banner';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['height', 'width', 'created_by', 'updated_by'], 'integer'],
            [['created_at', 'updated_at'], 'safe'],
            [['name'], 'string', 'max' => 60],
            [['description'], 'string', 'max' => 255],
            [['url'], 'string', 'max' => 500]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'lc_banner_id' => 'Lc Banner ID',
            'name' => 'Name',
            'description' => 'Description',
            'url' => 'Url',
            'height' => 'Height',
            'width' => 'Width',
            'created_at' => 'Created At',
            'created_by' => 'Created By',
            'updated_at' => 'Updated At',
            'updated_by' => 'Updated By',
        ];
    }
}
