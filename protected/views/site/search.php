<?php
/* @var $this SiteController */

$this->pageTitle = "Tìm kiếm";
?>

<h3>Chào mừng tới nhà sách Tri Thức</h3>
<h3><b>Kết quả tìm kiếm</b></h3><br/>
<div>
    <?php
    $this->widget('zii.widgets.CListView', array(
        'dataProvider' => $dataProvider,
        'itemView' => '_view',
        'itemsTagName'=>'ul',
        'itemsCssClass'=>'clearfix port-det port-thumb'
    ));
    ?>
</div>

