<?php

namespace vsoft\express\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use vsoft\express\models\LcBooking;

/**
 * LcBookingSearch represents the model behind the search form about `vsoft\express\models\LcBooking`.
 */
class LcBookingSearch extends LcBooking
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['lc_booking_id', 'lc_building_id', 'apart_type', 'floorplan'], 'integer'],
            [['checkin', 'checkout', 'fullname', 'phone', 'email', 'address', 'passport_no', 'nationality', 'info', 'ip', 'agent', 'browser_type', 'browser_name', 'browser_version', 'platform', 'created_at'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = LcBooking::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        $query->andFilterWhere([
            'lc_booking_id' => $this->lc_booking_id,
            'lc_building_id' => $this->lc_building_id,
            'checkin' => $this->checkin,
            'checkout' => $this->checkout,
            'apart_type' => $this->apart_type,
            'floorplan' => $this->floorplan,
            'created_at' => $this->created_at,
        ]);

        $query->andFilterWhere(['like', 'fullname', $this->fullname])
            ->andFilterWhere(['like', 'phone', $this->phone])
            ->andFilterWhere(['like', 'email', $this->email])
            ->andFilterWhere(['like', 'address', $this->address])
            ->andFilterWhere(['like', 'passport_no', $this->passport_no])
            ->andFilterWhere(['like', 'nationality', $this->nationality])
            ->andFilterWhere(['like', 'info', $this->info])
            ->andFilterWhere(['like', 'ip', $this->ip])
            ->andFilterWhere(['like', 'agent', $this->agent])
            ->andFilterWhere(['like', 'browser_type', $this->browser_type])
            ->andFilterWhere(['like', 'browser_name', $this->browser_name])
            ->andFilterWhere(['like', 'browser_version', $this->browser_version])
            ->andFilterWhere(['like', 'platform', $this->platform]);

        return $dataProvider;
    }
}
