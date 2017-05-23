<?php
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
class StatisticController extends Controller{
    /**
     * Lists all models.
     */
    public $layout = '//layouts/statistic';
    public function actionIndex(){
        $sql = 'SELECT EXTRACT(MONTH FROM create_date) Thang, SUM(total_amount) SoLuong
                FROM bill
                WHERE EXTRACT(YEAR FROM create_date) = 2014
                AND payed = 1
                GROUP BY Thang
                ORDER BY Thang';
        
        $cmd = Yii::app()->db->createCommand($sql);
        $resultSet = $cmd->query();
        
        $arrData = array(
            '1' => 0,
            '2' => 0,
            '3' => 0,
            '4' => 0,
            '5' => 0,
            '6' => 0,
            '7' => 0,
            '8' => 0,
            '9' => 0,
            '10' => 0,
            '11' => 0,
            '12' => 0,
        );
        
        foreach ($resultSet as $resultRow){
            $arrData[$resultRow['Thang']] = (int)$resultRow['SoLuong'];
        }
        
        $this->render('index', array(
//            'arrData' => $arrData,
            'arrData' => array(10, 20, 30, 40, 50, 60, 70, 60, 50, 40, 30, 20),
            'arrTick' => array(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12),
            'arrLabel' => array('Doanh số bán sách từng tháng')
        ));
    }
}

