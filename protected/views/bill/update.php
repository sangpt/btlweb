<?php
/* @var $this BillController */
/* @var $model Bill */

$this->breadcrumbs=array(
	'Bills'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List Bill', 'url'=>array('index')),
	array('label'=>'Create Bill', 'url'=>array('create')),
	array('label'=>'View Bill', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage Bill', 'url'=>array('admin')),
);
?>

<h1>Update Bill <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>