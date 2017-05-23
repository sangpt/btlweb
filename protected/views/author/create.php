<?php
/* @var $this AuthorController */
/* @var $model Author */

$this->breadcrumbs=array(
	'Authors'=>array('index'),
	'Create',
);

//$this->menu=array(
//	array('label'=>'Danh sách tác giả', 'url'=>array('index')),
//	array('label'=>'Quản lý tác giả', 'url'=>array('admin')),
//);
?>

<h1>Thêm tác giả</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>