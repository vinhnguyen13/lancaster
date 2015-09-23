<?php

namespace johnb0\gallery\models;

use Yii;
use yii\web\UploadedFile;
use yii\imagine\Image;
use yii\db\ActiveRecord;
use johnb0\gallery\Module;
use johnb0\gallery\traits\ModuleTrait;
use yii\helpers\Inflector;

/**
 * This is the model class for table "gallery_photo".
 *
 * @property integer $id
 * @property integer $gallery_id
 * @property string $name
 * @property string $description
 * @property string $filename
 * @property integer $sort
 * @property string $type 
 * @property string $size
 * @property string $dirname
 * @property string $alt
 * @property string $thumbs
 *
 * @property Gallery $gallery
 */
class GalleryPhoto extends ActiveRecord
{
    use ModuleTrait;        


    public $file;
    
    public static $imageFileTypes = ['image/gif', 'image/jpeg', 'image/png'];
    
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'gallery_photo';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['gallery_id', 'sort'], 'integer'],
            [['description', 'thumbs', 'alt'], 'string'],
            [['size'], 'integer'],
            [['name', 'filename', 'dirname', 'type'], 'string', 'max' => 255],
            [['file'], 'file']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'gallery_id' => 'Gallery ID',
            'name' => 'Name',
            'description' => 'Description',
            'filename' => 'Filename',
            'sort' => 'Sort',
            'type' => 'Type',
            'size' => 'Size',
            'thumbs' => 'Thumbs',
            'dirname' => 'Dirname',
            'alt' => 'Alt',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getGallery()
    {
        return $this->hasOne(Gallery::className(), ['id' => 'gallery_id']);
    }
    
    /**
     * @return bool if type of this media file is image, return true;
     */
    public function isImage()
    {
        return in_array($this->type, self::$imageFileTypes);
    }
    
    /**
     * Save just uploaded file     
     * @return bool
     */
    public function saveUploadedFile()
    {        
        
        $folderName = $this->makeValidName($this->gallery->name) . "_" . $this->gallery->id;
        $imagePath = Yii::getAlias($this->module->imagePath);
        $absolutePath = $imagePath . DIRECTORY_SEPARATOR . $folderName;

        // create actual directory structure 
        if (!file_exists($absolutePath)) {
            mkdir($absolutePath, 0777, true);
        }

        // get file instance
        $this->file = UploadedFile::getInstance($this, 'file');
        $filename = uniqid($this->gallery_id) . '.' . $this->file->extension;

        // checks for existing url in db
        if (self::findByUrl($folderName, $filename)) {
            return false;
        }

        // save original uploaded file
        $this->file->saveAs($absolutePath . DIRECTORY_SEPARATOR . $filename);
        $this->filename = $filename;
        $this->type = $this->file->type;
        $this->size = $this->file->size;
        $this->dirname = $folderName;

        return $this->save();        
    }
    
    /**
     * Create thumbs for this image
     *     
     * @param array $presets thumbs presets. See in module config
     * @return bool
     */
    public function createThumbs()
    {
        $thumbs = [];
        $presets = $this->module->thumbs;
        $imagePath = Yii::getAlias($this->module->imagePath);
        $originalFile = pathinfo($this->filename);
        $filename = $originalFile['filename'];
        $extension = $originalFile['extension'];

        Image::$driver = [Image::DRIVER_GD2, Image::DRIVER_GMAGICK, Image::DRIVER_IMAGICK];

        foreach ($presets as $alias => $preset) {
            $width = $preset['size'][0];
            $height = $preset['size'][1];

            $thumbFilename = "$filename-{$width}x{$height}.$extension";
            
            $thumbUrl = $imagePath . DIRECTORY_SEPARATOR . $this->dirname . DIRECTORY_SEPARATOR . $thumbFilename;

            Image::thumbnail("$imagePath/{$this->getFilePath()}", $width, $height)->save("$thumbUrl");

            $thumbs[$alias] = $thumbFilename;
        }

        $this->thumbs = serialize($thumbs);        

        // create default thumbnail
        $this->createDefaultThumb();

        return $this->save();
    }
    
    /**
     * Create default thumbnail    
     */
    public function createDefaultThumb()
    {
        $imagePath = Yii::getAlias($this->module->imagePath);
        $originalFile = pathinfo($this->filename);
        $filename = $originalFile['filename'];
        $extension = $originalFile['extension'];

        Image::$driver = [Image::DRIVER_GD2, Image::DRIVER_GMAGICK, Image::DRIVER_IMAGICK];

        $size = Module::getDefaultThumbSize();
        $width = $size[0];
        $height = $size[1];
        $thumbUrl = $imagePath . DIRECTORY_SEPARATOR . $this->dirname . DIRECTORY_SEPARATOR . "$filename-{$width}x{$height}.$extension";
//        $thumbUrl = "$dirname/$filename-{$width}x{$height}.$extension";
        
        Image::thumbnail("$imagePath/{$this->getFilePath()}", $width, $height)->save("$thumbUrl");
    }
    
    /**
     * Find model by url
     *
     * @param $dirname
     * @param $filename
     * @return static
     */
    public static function findByUrl($dirname, $filename)
    {
        return self::findOne([
                    'dirname' => $dirname,
                    'filename' => $filename
                ]);
    }
    
    public function getDefaultThumb()
    {
        if ($this->isImage()) {
            $size = Module::getDefaultThumbSize();
            $originalFile = pathinfo($this->filename);
            $filename = $originalFile['filename'];
            $extension = $originalFile['extension'];
            $width = $size[0];
            $height = $size[1];

            return "$filename-{$width}x{$height}.$extension";
        }
    }
    
    /**
     * @param $baseUrl
     * @return string default thumbnail for image
     */
    public function getDefaultThumbUrl($baseUrl = '')
    {
        if ($this->isImage()) {
            $thumbsArray = $this->getThumbs();
            if(Yii::$app->getModule('gallery')->defaultUsedThumb && $thumbsArray && array_key_exists(Yii::$app->getModule('gallery')->defaultUsedThumb, $thumbsArray)) {
                return $this->getThumbUrl(Yii::$app->getModule('gallery')->defaultUsedThumb);
            } else {
                return Yii::$app->getModule('gallery')->imageUrl ."/" . $this->dirname . "/" . $this->getDefaultThumb();
            }
        }
        return "$baseUrl/images/file.png";
    }
    
    /**
     * @return array thumbnails
     */
    public function getThumbs()
    {
        return unserialize($this->thumbs);
    }

    /**
     * @param string $alias thumb alias
     * @return string thumb url
     */
    public function getThumbUrl($alias)
    {
        $thumbs = $this->getThumbs();

        if ($alias === 'original') {
            return Yii::$app->getModule('gallery')->imageUrl . "/" . $this->getFilePath();
        }

        if(!empty($thumbs[$alias])) {
            return Yii::$app->getModule('gallery')->imageUrl . "/" . $this->dirname . "/" . $thumbs[$alias];
        } else {
            return '';
        }        
    }

    /**
     * Thumbnail image html tag
     *
     * @param string $alias thumbnail alias
     * @param array $options html options
     * @return string Html image tag
     */
    public function getThumbImage($alias, $options=[])
    {
        $url = $this->getThumbUrl($alias);

        if (empty($url)) {
            return '';
        }

        if (empty($options['alt'])) {
            $options['alt'] = $this->alt;
        }

        return Html::img($url, $options);
    }

    /**
     * @param Module $module
     * @return array images list
     */
    public function getImagesList(Module $module)
    {
        $thumbs = $this->getThumbs();
        $list = [];

        foreach ($thumbs as $alias => $url) {
            $preset = $module->thumbs[$alias];
            $list[$url] = $preset['name'] . ' ' . $preset['size'][0] . ' × ' . $preset['size'][1];
        }

        $originalImageSize = $this->getOriginalImageSize();
        $list[$this->module->imageUrl . "/" . $this->getFilePath()] = Module::t('main', 'Original') . ' ' . $originalImageSize;

        return $list;
    }

    /**
     * Delete thumbnails for current image     
     */
    public function deleteThumbs()
    {
        $imagePath = Yii::getAlias($this->module->imagePath);
        if($this->getThumbs()){
            foreach ($this->getThumbs() as $thumbUrl) {
                if(file_exists("$imagePath/{$this->dirname}/$thumbUrl")){
                    unlink("$imagePath/{$this->dirname}/$thumbUrl");
                }
            }
        }
        if(file_exists("$imagePath/{$this->dirname}/{$this->getDefaultThumb()}")){
            unlink("$imagePath/{$this->dirname}/{$this->getDefaultThumb()}");
        }
    }

    /**
     * Delete file     
     * @return bool
     */
    public function deleteFile()
    {
        $basePath = Yii::getAlias($this->module->imagePath);
        $filePath = "$basePath/{$this->getFilePath()}";
        $dirName = dirname($filePath);

        if(file_exists($filePath) && unlink($filePath)) {
            if(count(glob($dirName . "/*")) == 0) {
                rmdir($dirName);
                return;
            }   
            return;
        }
    }
    
    /**
     * @return int last changes timestamp
     */
    public function getLastChanges()
    {
        return !empty($this->updated_at) ? $this->updated_at : $this->created_at;
    }

    /**
     * This method wrap getimagesize() function     
     * @param string $delimiter delimiter between width and height
     * @return string image size like '1366x768'
     */
    public function getOriginalImageSize($delimiter = ' × ')
    {
        $imageSizes = $this->getOriginalImageSizes();
        return "$imageSizes[0]$delimiter$imageSizes[1]";
    }

    /**
     * This method wrap getimagesize() function     
     * @return array
     */
    public function getOriginalImageSizes()
    {
        $basePath = Yii::getAlias($this->module->imagePath);
        return getimagesize("$basePath/{$this->getFilePath()}");
    }

    /**
     * @return string file size
     */
    public function getFileSize()
    {
        Yii::$app->formatter->sizeFormatBase = 1000;
        return Yii::$app->formatter->asShortSize($this->size, 0);
    }
    
    /**
     * Search models by file types
     * @param array $types file types
     * @return array|\yii\db\ActiveRecord[]
     */
    public static function findByTypes(array $types)
    {
        return self::find()->filterWhere(['in', 'type', $types])->all();
    }
    
    public function getFilePath()
    {
        return $this->dirname . "/" . $this->filename;
    }
    
    public function getUrl()
    {
        return \Yii::$app->getModule('gallery')->imageUrl . "/" . $this->getFilePath();
    }
    
    public function makeValidName($name)
    {
        return Inflector::slug($name, '-', true);
    }
    
    public function fields() {
        return [
            'id',
            'name',
            'description',
            'alt',
            'image' => function($model) {
                return \Yii::$app->params['domainName'] . $model->getUrl();
            },
            'thumb' => function($model) {
                return \Yii::$app->params['domainName'] . $model->getDefaultThumbUrl();
            }
        ];
    }
}
