<?php
/* @var $this BookController */
/* @var $model Book */

$this->breadcrumbs=array(
	'Books'=>array('index'),
	$model->name,
);
?>

<h3>Thông tin sách: <?php echo $model->name; ?></h3>
<table><td><?php echo CHtml::image("images/book/$model->image_link",'BOOK',array("width"=>"150px" ,"height"=>"280px"));?></td>
<td><?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'name',
		array(
                    'label'=>'Author',
                    'value'=>function($data){
                        $link='';
                        foreach($data->authors as $item){
                            $link.=CHtml::link(CHtml::encode($item->name),array('author/view','id'=>$item->id));
                            $link.=' ,';
                        }
                        return $link;
                    },
                    
                    'type'=>'raw'
                ),
		'publisher',
		'year',
		'pages',
		'price',
		'description',
		'comment_count',
		'star',
		'quantity',
	),
)); ?></td></table>
