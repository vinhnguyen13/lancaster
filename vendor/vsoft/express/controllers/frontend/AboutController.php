<?php

namespace vsoft\express\controllers\frontend;

use funson86\cms\models\CmsCatalog;
use funson86\cms\models\CmsShow;
use funson86\cms\models\Status;
use yii\data\Pagination;

class AboutController extends \yii\web\Controller
{
    public function actionIndex()
    {
        $ids = CmsCatalog::getArraySubCatalogId(0, CmsCatalog::find()->where([
            'surname' => 'ABOUT',
        ])->asArray()->all());
        $query = CmsShow::find();
        $query->where([
            'status' => Status::STATUS_ACTIVE,
            'catalog_id' => $ids,
        ]);

        $pagination = new Pagination([
            'defaultPageSize' => isset(\Yii::$app->params['cmsListPageCount']) ? Yii::$app->params['cmsListPageCount'] : 20,
            'totalCount' => $query->count(),
        ]);

        $news = $query->orderBy(['created_at' => SORT_DESC])
            ->offset($pagination->offset)
            ->limit($pagination->limit)
            ->all();

        return $this->render('index', ['news'=>$news]);
    }

    public function actionDetail()
    {
        $id = \Yii::$app->request->get('id');
        if (!$id) $this->goHome();
        //$this->layout = 'column2';

        $detail = CmsShow::findOne($id);

        return $this->render('detail', ['detail'=>$detail]);
    }

}
