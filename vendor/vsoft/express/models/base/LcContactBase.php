<?php

namespace vsoft\express\models\base;

use Yii;

/**
 * This is the model class for table "lc_contact".
 *
 * @property integer $lc_contact_id
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
            'lc_contact_id' => 'Lc Contact ID',
            'name' => 'Name',
            'address' => 'Address',
            'title' => 'Title',
            'message' => 'Message',
            'ip' => 'Ip',
            'agent' => 'Agent',
            'browser_type' => 'Browser Type',
            'browser_name' => 'Browser Name',
            'browser_version' => 'Browser Version',
            'platform' => 'Platform',
            'created_at' => 'Created At',
        ];
    }
}
