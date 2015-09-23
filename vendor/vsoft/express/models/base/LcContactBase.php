<?php

namespace vsoft\express\models\base;

use Yii;

/**
 * This is the model class for table "lc_contact".
 *
 * @property integer $id
 * @property string $name
 * @property string $address
 * @property string $title
 * @property string $message
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
 */
class LcContactBase extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'lc_contact';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['message'], 'string'],
            [['created_at', 'updated_at'], 'safe'],
            [['created_by', 'updated_by'], 'integer'],
            [['name', 'browser_name', 'platform'], 'string', 'max' => 60],
            [['address', 'title', 'agent'], 'string', 'max' => 255],
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
            'id' => Yii::t('contact', 'ID'),
            'name' => Yii::t('contact', 'Name'),
            'address' => Yii::t('contact', 'Address'),
            'title' => Yii::t('contact', 'Title'),
            'message' => Yii::t('contact', 'Message'),
            'ip' => Yii::t('contact', 'Ip'),
            'agent' => Yii::t('contact', 'Agent'),
            'browser_type' => Yii::t('contact', 'Browser Type'),
            'browser_name' => Yii::t('contact', 'Browser Name'),
            'browser_version' => Yii::t('contact', 'Browser Version'),
            'platform' => Yii::t('contact', 'Platform'),
            'created_at' => Yii::t('contact', 'Created At'),
            'updated_at' => Yii::t('contact', 'Updated At'),
            'created_by' => Yii::t('contact', 'Created By'),
            'updated_by' => Yii::t('contact', 'Updated By'),
        ];
    }
}
