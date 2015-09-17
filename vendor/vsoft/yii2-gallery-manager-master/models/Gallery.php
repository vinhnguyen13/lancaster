<?php

namespace johnb0\gallery\models;

use Yii;
use johnb0\gallery\Module;
use yii\db\ActiveQuery;
use johnb0\gallery\traits\ModuleTrait;

/**
 * This is the model class for table "gallery".
 *
 * @property integer $id
 * @property string $name
 * @property string $description
 * @property integer $status  
 * @property GalleryPhoto[] $galleryPhotos 
 */
class Gallery extends \yii\db\ActiveRecord
{
    use ModuleTrait;      
    
    const STATUS_DRAFT = 0;
    const STATUS_PUBLISHED = 1;
    
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'gallery';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['name', 'description'], 'string', 'max' => 255],
            [['status'], 'integer'], 
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'name' => 'Наименование',
            'description' => 'Описание',
            'status' => 'Статус',
        ];
    }
        
    public function getPhotos()
    {
        return $this->hasMany(GalleryPhoto::className(), ['gallery_id' => 'id']);
    }
    
    public function getPhotosArray()
    {
        $photos = GalleryPhoto::find()
                ->where(['gallery_id' => $this->id])
                ->all();
        return $photos;
    }
    
    public function getGalleryStatus() 
    {
        $statuses = self::getGalleryStatusesArray();
        
        if(isset($statuses[$this->status])) {
            return $statuses[$this->status];
        }
    }
    
    public static function getGalleryStatusesArray() {
        return [
            self::STATUS_DRAFT => 'Черновик',
            self::STATUS_PUBLISHED => 'Опубликована'
        ];
    }
    
    public function beforeDelete() {
                        
        foreach ($this->photos as $photo) {
            if ($photo->isImage()) {
                $photo->deleteThumbs();
            }

            $photo->deleteFile();
            $photo->delete();
        }                    
        
        return parent::beforeDelete();
    }
    
    public static function find()
    {
        return new GalleryQuery(get_called_class());
    }
}

class GalleryQuery extends ActiveQuery
{
    public function published()
    {
        $this->andWhere(['status' => Gallery::STATUS_PUBLISHED]);
        return $this;
    }
    
    public function draft()
    {
        $this->andWhere(['status' => Gallery::STATUS_DRAFT]);
        return $this;
    }
}