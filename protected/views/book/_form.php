<?php
/* @var $this BookController */
/* @var $model Book */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'book-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
    'htmlOptions'=>array('class'=>'form')
)); ?>

	<p class="note">Các trường với dấu <span class="required">*</span> là bắt buộc.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="form-group">
		<?php echo $form->labelEx($model,'name'); ?>
		<?php echo $form->textField($model,'name',array('class'=>'form-control','size'=>45,'maxlength'=>45)); ?>
		<?php echo $form->error($model,'name'); ?>
	</div>
        <div class="form-group">
		<?php echo $form->labelEx($model,'authors');?>
		<?php echo $form->dropDownList($model,'authors', CHtml::listData(
			Author::model()->findAll(),'id','name'),
			array('class'=>'form-control','multiple'=>'multiple', 'size'=>5));?>
		<?php echo $form->error($model,'authors');?>	
	</div>
        <div class="form-group">
		<?php echo $form->labelEx($model,'categories');?>
		<?php echo $form->dropDownList($model,'categories', CHtml::listData(
                 Category::model()->findAll(),'id','name'),
			array('class'=>'form-control','multiple'=>'multiple', 'size'=>5));?>
		<?php echo $form->error($model,'categories');?>	
	</div>
	<div class="form-group">
		<?php echo $form->labelEx($model,'publisher'); ?>
		<?php echo $form->textField($model,'publisher',array('class'=>'form-control','size'=>45,'maxlength'=>45)); ?>
		<?php echo $form->error($model,'publisher'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'year'); ?>
		<?php echo $form->textField($model,'year',array('class'=>'form-control','size'=>4,'maxlength'=>4)); ?>
		<?php echo $form->error($model,'year'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'pages'); ?>
		<?php echo $form->textField($model,'pages', array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'pages'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'price'); ?>
		<?php echo $form->textField($model,'price', array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'price'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'description'); ?>
		<?php echo $form->textArea($model,'description',array('class'=>'form-control','rows'=>6, 'cols'=>50)); ?>
		<?php echo $form->error($model,'description'); ?>
	</div>

<!--	<div class="form-group">
		<?php echo $form->labelEx($model,'comment_count'); ?>
		<?php echo $form->textField($model,'comment_count', array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'comment_count'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'star'); ?>
		<?php echo $form->textField($model,'star', array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'star'); ?>
	</div>-->

	<div class="form-group">
		<?php echo $form->labelEx($model,'quantity'); ?>
		<?php echo $form->textField($model,'quantity', array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'quantity'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'image_link'); ?>
		<?php echo $form->fileField($model,'image_link', array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'image_link'); ?>
	</div>

	<div >
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save', array('class'=>'btn btn-success')); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->