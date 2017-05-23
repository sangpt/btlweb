<?php
/* @var $this DiscountController */
/* @var $model Discount */
/* @var $form CActiveForm */
?>

<div class="form">

    <?php
    $form = $this->beginWidget('CActiveForm', array(
        'id' => 'discount-form',
        // Please note: When you enable ajax validation, make sure the corresponding
        // controller action is handling ajax validation correctly.
        // There is a call to performAjaxValidation() commented in generated controller code.
        // See class documentation of CActiveForm for details on this.
        'enableAjaxValidation' => false,
    ));
    ?>

    <p class="note">Fields with <span class="required">*</span> are required.</p>

    <?php echo $form->errorSummary($model); ?>

    <!--	<div class="form-group">
    <?php echo $form->labelEx($model, 'id'); ?>
<?php echo $form->textField($model, 'id', array('class' => 'form-control')); ?>
<?php echo $form->error($model, 'id'); ?>
            </div>-->

    <div class="form-group">
        <?php echo $form->labelEx($model, 'name'); ?>
<?php echo $form->textField($model, 'name', array('class' => 'form-control', 'size' => 45, 'maxlength' => 45)); ?>
<?php echo $form->error($model, 'name'); ?>
    </div>

    <div class="form-group">
        <?php echo $form->labelEx($model, 'start_date'); ?>
<?php echo $form->dateField($model, 'start_date', array('class' => 'form-control')); ?>
<?php echo $form->error($model, 'start_date'); ?>
    </div>

    <div class="form-group">
        <?php echo $form->labelEx($model, 'end_date'); ?>
<?php echo $form->dateField($model, 'end_date', array('class' => 'form-control')); ?>
<?php echo $form->error($model, 'end_date'); ?>
    </div>

    <div class="form-group">
        <?php echo $form->labelEx($model, 'discount'); ?>
<?php echo $form->textField($model, 'discount', array('class' => 'form-control', 'placeholder' => '0->100%')); ?>
        <?php echo $form->error($model, 'discount'); ?>
    </div>
    <div class="form-group">
        <?php echo $form->labelEx($model, 'image_link'); ?>
<?php echo $form->fileField($model, 'image_link', array('class' => 'form-control')); ?>
        <?php echo $form->error($model, 'image_link'); ?>
    </div>
    <div>
    <?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save', array('class' => 'btn btn-success')); ?>
    </div>

<?php $this->endWidget(); ?>

</div><!-- form -->