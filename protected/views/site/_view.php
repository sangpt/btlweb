<?php
/* @var $this SiteController */
/* @var $data Book */
?>

<div class="col-xs-6 col-md-3">
    <div class="thumbnail text-center">
        <img src="<?php echo Yii::app()->baseUrl."/images/book/".$data['image_link']?>" style="width:155px; height: 205px">
        <div id="bookname"><b><?php echo CHtml::link(CHtml::encode($data->name),array('book/view', 'id'=>$data->id)); ?></b></div>
        <div id="authorlist"><?php echo $data->authorListString();?></div>
        <div id="money"><?php echo $data->getMoney();?></div>
    </div>

</div>