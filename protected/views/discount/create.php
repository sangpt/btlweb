<?php
/* @var $this DiscountController */
/* @var $model Discount */

$this->breadcrumbs=array(
	'Discounts'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Discount', 'url'=>array('index')),
	array('label'=>'Manage Discount', 'url'=>array('admin')),
);
?>

<h3>Thêm chương trình khuyến mãi</h3>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>