<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
include 'header.php';
?>
<div class="row">
     <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
        <table class="table table-bordered">
            <tr>
                <th>
            <h4> <b>Chương trình khuyến mãi</b></h4>
            <hr style="height:1px;background-color:#888;" />
            <img src="<?php echo Yii::app()->baseUrl ?>/images/discount/saleoff.jpg" class="img-responsive" alt="Khuyến mãi"/>
            </th>    
            </tr>
            <tr>
                <th>
            <h4> <b>Danh mục sách</b></h4>
            <hr style="height:1px;background-color:#888;" />

            </th>
            </tr>

            <?php
            $category = Category::model()->findAll();
            foreach ($category as $cate) {
                echo "<tr><th>" . CHtml::link($cate->name, array('category/view', 'id' => $cate->id)) . "</th></tr>";
            }
            ?>   

        </table>
    </div>
    <div class="col-xs-10 col-sm-10 col-md-10 col-lg-10">
        <?php echo $content; ?>
    </div>
</div>
<?php
include 'footer.php';
?>
