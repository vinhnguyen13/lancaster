<?php

/**
 * @author Lajos Molnár <lajax.m@gmail.com>
 * @since 1.0
 */

namespace lajax\translatemanager\models;

use Yii;

/**
 * This is the model class for table "language".
 *
 * @property string $language_id
 * @property string $language
 * @property string $country
 * @property string $name
 * @property string $name_ascii
 * @property integer $status
 *
 * @property LanguageTranslate $languageTranslate
 * @property LanguageSource[] $ids
 * @property User[] $users
 */
class Language extends \yii\db\ActiveRecord {

    /**
     * Status of inactive language.
     */
    const STATUS_INACTIVE = 0;

    /**
     * Status of active language.
     */
    const STATUS_ACTIVE = 1;

    /**
     * Status of ‘beta’ language.
     */
    const STATUS_BETA = 2;

    /**
     * Array containing possible states.
     * @var array
     * @translate
     */
    private static $_STATUSES = [
        self::STATUS_INACTIVE => 'Inactive',
        self::STATUS_ACTIVE => 'Active',
        self::STATUS_BETA => 'Beta',
    ];

    /**
     * @inheritdoc
     */
    public static function tableName() {
        return 'language';
    }

    /**
     * @inheritdoc
     */
    public function rules() {
        return [
            [['language_id', 'language', 'country', 'name', 'name_ascii', 'status'], 'required'],
            [['status'], 'integer'],
            [['language_id'], 'string', 'max' => 5],
            [['language', 'country'], 'string', 'max' => 2],
            [['name', 'name_ascii'], 'string', 'max' => 32]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels() {
        return [
            'language_id' => Yii::t('model', 'Language ID'),
            'language' => Yii::t('model', 'Language'),
            'country' => Yii::t('model', 'Country'),
            'name' => Yii::t('model', 'Name'),
            'name_ascii' => Yii::t('model', 'Name Ascii'),
            'status' => Yii::t('model', 'Status'),
        ];
    }

    /**
     * Returns the list of languages stored in the database in an array.
     * @param boolean $active True/False according to the status of the language.
     * @return array
     */
    public static function getLanguageNames($active = false) {
        $languageNames = [];
        foreach (self::getLanguages($active) as $language) {
            $languageNames[$language->language_id] = $language->name;
        }

        return $languageNames;
    }

    /**
     * Returns language objects.
     * @param boolean $active True/False according to the status of the language.
     * @return Language|array
     */
    public static function getLanguages($active = true) {
        if ($active) {
            return Language::find()->where(['status' => static::STATUS_ACTIVE])->all();
        } else {
            return Language::find()->all();
        }
    }

    /**
     * Returns the state of the language (Active, Inactive or Beta) in the current language.
     * @return string
     */
    public function getStatusName() {
        return Yii::t('array', self::$_STATUSES[$this->status]);
    }

    /**
     * Returns the names of possible states in an associative array.
     * @return array
     */
    public static function getStatusNames() {
        return \lajax\translatemanager\helpers\Language::a(self::$_STATUSES);
    }

   /**
     * Returns the completness of a given translation (language).
     * @return integer
     */
    public function getGridStatistic() {
        static $statistics;
        if (!$statistics) {
            $count = LanguageSource::find()->count();
            if ($count == 0) {
                return 0;
            }

            $languages = Language::find()
                    ->select('language_id, COUNT(`lt`.`id`) AS `status`')
                    ->leftJoin(LanguageTranslate::tableName() . ' AS `lt`', '`language`.`language_id` = `lt`.`language`')
                    ->groupBy('language_id')
                    ->all();
            foreach ($languages as $language) {
                $statistics[$language->language_id] = round($language->status / $count, 2) * 100;
            }
            
        }
        return isset($statistics[$this->language_id]) ? $statistics[$this->language_id] : 0;
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getLanguageTranslate() {
        return $this->hasOne(LanguageTranslate::className(), ['language' => 'language_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getIds() {
        return $this->hasMany(LanguageSource::className(), ['id' => 'id'])
                ->viaTable(LanguageTranslate::tableName(), ['language' => 'language_id']);
    }

}
