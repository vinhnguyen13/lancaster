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
            [['created_at'], 'safe'],
            [['name', 'browser_name', 'platform'], 'string', 'max' => 60],
            [['address', 'title'], 'string', 'max' => 255],
            [['ip'], 'string', 'max' => 40],
            [['agent'], 'string', 'max' => 100],
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
            'name' => Yii::t('building', 'Name'),
            'address' => Yii::t('building', 'Address'),
            'title' => Yii::t('building', 'Title'),
            'message' => Yii::t('building', 'Message'),
            'ip' => Yii::t('building', 'Ip'),
            'agent' => Yii::t('building', 'Agent'),
            'browser_type' => Yii::t('building', 'Browser Type'),
            'browser_name' => Yii::t('building', 'Browser Name'),
            'browser_version' => Yii::t('building', 'Browser Version'),
            'platform' => Yii::t('building', 'Platform'),
            'created_at' => Yii::t('building', 'Created At'),
        ];
    }
}
