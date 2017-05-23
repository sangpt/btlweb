<?php
/* @var $this BillController */
/* @var $model Bill */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'bill-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="form-group">
		<?php echo $form->labelEx($model,'id'); ?>
		<?php echo $form->textField($model,'id', array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'id'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'member_id'); ?>
		<?php echo $form->textField($model,'member_id'); ?>
		<?php echo $form->error($model,'member_id'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'create_date'); ?>
		<?php echo $form->textField($model,'create_date'); ?>
		<?php echo $form->error($model,'create_date'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'total_amount'); ?>
		<?php echo $form->textField($model,'total_amount'); ?>
		<?php echo $form->error($model,'total_amount'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'payed'); ?>
		<?php echo $form->textField($model,'payed'); ?>
		<?php echo $form->error($model,'payed'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'delivery_address'); ?>
		<?php echo $form->textArea($model,'delivery_address',array('rows'=>6, 'cols'=>50)); ?>
		<?php echo $form->error($model,'delivery_address'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'discount'); ?>
		<?php echo $form->textField($model,'discount'); ?>
		<?php echo $form->error($model,'discount'); ?>
	</div>

	<div class="form-group">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save', array('class'=>'form-control btn btn-success')); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->