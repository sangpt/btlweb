<?php
/* @var $this SiteController */
/* @var $model LoginForm */
/* @var $form CActiveForm  */

$this->pageTitle=Yii::app()->name . ' - Login';
$this->breadcrumbs=array(
	'Đăng nhập',
);
$this->layout = "//layouts/main"
?>

<h1>Đăng nhập</h1>

<p>Hãy nhập chính xác các thông tin sau để đăng nhập:</p>

<div class="form">
<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'login-form',
	'enableClientValidation'=>true,
	'clientOptions'=>array(
		'validateOnSubmit'=>true,
	),
)); ?>

	<p class="note">Các trường đánh dấu <span class="required">*</span> là bắt buộc.</p>

	<div class="form-group">
		<?php echo $form->labelEx($model,'username'); ?>
		<?php echo $form->textField($model,'username', array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'username'); ?>
	</div>

	<div class="form-group">
		<?php echo $form->labelEx($model,'password'); ?>
		<?php echo $form->passwordField($model,'password', array('class'=>'form-control')); ?>
		<?php echo $form->error($model,'password'); ?>
		
	</div>

	<div class="form-group">
		<?php echo $form->checkBox($model,'rememberMe'); ?>
		<?php echo $form->label($model,'rememberMe', array('class'=>'form-control btn btn-danger')); ?>
		<?php echo $form->error($model,'rememberMe'); ?>
	</div>

	<div>
		<?php echo CHtml::submitButton('Login', array( 'class'=>"btn btn-success")); ?>
	</div>

<?php $this->endWidget(); ?>
</div><!-- form -->
