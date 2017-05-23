<?php
/* @var $this SiteController */

$this->pageTitle = Yii::app()->name;
?>

<h3>Chào mừng tới nhà sách Tri Thức</h3>
<h3><b>Sách mới</b></h3><br/>
<div>
    
    <?php 
    if (isset($dataProvider)) {
        $this->widget('zii.widgets.CListView', array(
        'dataProvider' => $dataProvider,
        'itemView' => '_view',
        'itemsTagName'=>'ul',
        'itemsCssClass'=>'clearfix port-det port-thumb'
    ));
    }
    ?>
</div>

