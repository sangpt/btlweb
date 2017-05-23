<?php
/* @var $this BookController */
/* @var $model Book */

$this->breadcrumbs=array(
	'Books'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Book', 'url'=>array('index')),
	array('label'=>'Manage Book', 'url'=>array('admin')),
);
?>

<h1>Thêm đầu sách</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>