<?php

namespace johnb0\gallery\controllers;

use Yii;
use johnb0\gallery\models\GalleryPhoto;
use johnb0\gallery\Module;
use yii\helpers\Json;
use yii\web\Response;
use yii\helpers\Url;

class GalleryPhotoController extends \yii\web\Controller
{        
    
    /*
     * Upload photo into the gallery
     * @param $id Gallery Id
     * @return json
     */
    public function actionUpload($id)
    {
        
        Yii::$app->response->format = Response::FORMAT_JSON;

        $model = new GalleryPhoto();
        $model->gallery_id = (int)$id;        
        $model->saveUploadedFile();
//        $bundle = FilemanagerAsset::register($this->view);

        if ($model->isImage()) {
            $model->createThumbs();
        }                

        $response['files'][] = [
            'url'           => $model->url,
            'thumbnailUrl'  => $model->getDefaultThumbUrl(),
            'name'          => $model->filename,
            'type'          => $model->type,
            'size'          => $model->file->size,
            'deleteUrl'     => Url::to(['gallery-photo/delete', 'id' => $model->id]),
            'deleteType'    => 'POST',
        ];

        return $response;
    }
    
    /**
     * Delete model with files
     * @param $id
     * @return array
     */
    public function actionDelete($id)
    {        
        
        Yii::$app->response->format = Response::FORMAT_JSON;

        $model = GalleryPhoto::findOne($id);

        if ($model->isImage()) {
            $model->deleteThumbs();
        }

        $model->deleteFile();
        $model->delete();

        return ['success' => 'true'];
    }

    public function actionEditPhotoInfo($id)
    {
        Yii::$app->response->format = Response::FORMAT_HTML;
        $model = GalleryPhoto::findOne($id);
        if(Yii::$app->request->isAjax && Yii::$app->request->post()){
            $model->load(Yii::$app->request->post());
            $model->settings = Json::encode($model->settings);
            $model->validate();
            if(!$model->hasErrors()){
                $model->save();
            }
        }
        return $this->renderAjax('/gallery/_editPhotoInfo', [
            'model' => $model
        ]);
    }

}
