<?php

namespace funson86\cms\models;

use mervick\image\Image;
use Yii;
use yii\behaviors\AttributeBehavior;
use yii\behaviors\SluggableBehavior;
use yii\behaviors\TimestampBehavior;
use yii\behaviors\BlameableBehavior;
use yii\db\ActiveRecord;
use yii\db\Expression;
use funson86\cms\Module;
use yii\helpers\Inflector;
use yii\helpers\Url;
use yii\web\UploadedFile;

/**
 * This is the model class for table "cms_show".
 *
 * @property integer $id
 * @property integer $catalog_id
 * @property string $title
 * @property string $surname
 * @property string $brief
 * @property string $content
 * @property string $seo_title
 * @property string $seo_keywords
 * @property string $seo_description
 * @property string $banner
 * @property string $template_show
 * @property string $author
 * @property integer $click
 * @property integer $status
 * @property integer $created_at
 * @property integer $updated_at
 *
 * @property CmsCatalog $catalog
 */
class CmsShow extends \yii\db\ActiveRecord
{

    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'cms_show';
    }

    /**
     * create_time, update_time to now()
     * crate_user_id, update_user_id to current login user id
     */
    public function behaviors()
    {
        return [
            'slug' => [
                'class' => SluggableBehavior::className(),
                'attribute' => 'title',
                 'slugAttribute' => 'slug',
            ],
            [
                'class' => TimestampBehavior::className(),
                'createdAtAttribute' => 'created_at',
                'updatedAtAttribute' => 'updated_at',
                'value' => new Expression('NOW()'),
            ],
            [
                'class' => AttributeBehavior::className(),
                'attributes' => [
                    ActiveRecord::EVENT_BEFORE_INSERT => 'create_by',
                    ActiveRecord::EVENT_BEFORE_UPDATE => 'update_by',
                ],
                'value' => function ($event) {
                    return Yii::$app->user->id;
                },
            ],
            // BlameableBehavior::className(),
        ];
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['catalog_id', 'click', 'status'], 'integer'],
            [['title'], 'required'],
            [['content'], 'string'],
            [['title', 'seo_title', 'seo_keywords', 'seo_description', 'banner', 'template_show', 'author'], 'string', 'max' => 255],
            [['surname'], 'string', 'max' => 128],
            [['brief'], 'string', 'max' => 1022]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Module::t('cms', 'ID'),
            'catalog_id' => Module::t('cms', 'Catalog ID'),
            'title' => Module::t('cms', 'Title'),
            'surname' => Module::t('cms', 'Surname'),
            'brief' => Module::t('cms', 'Brief'),
            'content' => Module::t('cms', 'Content'),
            'seo_title' => Module::t('cms', 'Seo Title'),
            'seo_keywords' => Module::t('cms', 'Seo Keywords'),
            'seo_description' => Module::t('cms', 'Seo Description'),
            'banner' => Module::t('cms', 'Banner'),
            'template_show' => Module::t('cms', 'Template Show'),
            'author' => Module::t('cms', 'Author'),
            'click' => Module::t('cms', 'Click'),
            'status' => Module::t('cms', 'Status'),
            'created_at' => Module::t('cms', 'Created At'),
            'updated_at' => Module::t('cms', 'Updated At'),
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getCatalog()
    {
        return $this->hasOne(CmsCatalog::className(), ['id' => 'catalog_id']);
    }

    /**
     * Before save.
     * 
     */
    /*public function beforeSave($insert)
    {
        if(parent::beforeSave($insert))
        {
            // add your code here
            return true;
        }
        else
            return false;
    }*/

    /**
     * After save.
     *
     */
    /*public function afterSave($insert, $changedAttributes)
    {
        parent::afterSave($insert, $changedAttributes);
        // add your code here
    }*/
    public function upload()
    {
        $image = UploadedFile::getInstance($this, 'banner');
        if(!empty($image)){
            $fileName = Inflector::slug($image->baseName) . '.' . $image->extension;
            $file = \Yii::getAlias('@store/cms').'/' . $fileName;
            list($width, $height, $type, $attr) = getimagesize($image->tempName);

            if($width > 950){
                $master = Image::WIDTH;
            }elseif($height > 610){
                $master = Image::HEIGHT;
            }
            $image->saveAs($file);
            $image = Yii::$app->image->load($file);
            $isSaved = $image->resize(950, 610, $master)->crop(950, 610)->sharpen(20)->save();
            if($isSaved){
                $this->banner = "$fileName";
            }
        }
    }

    public function getPathBanner($fileName = null)
    {
        return \Yii::getAlias('@store/cms/').(!empty($fileName) ? $fileName: '');
    }

    public function getUrlBanner($fileName = null)
    {
        return Url::to('/store/cms/').(!empty($fileName) ? $fileName: '');
    }

}
