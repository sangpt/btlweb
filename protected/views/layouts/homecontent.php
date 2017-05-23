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
    <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
        <?php echo $content; ?>
    </div>
    <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
        <?php
        $user = Yii::app()->user;
        if (!$user->isGuest) {
            if ($user->role = "normal") {
                $cart_state = 0;
                if (isset(Yii::app()->session['cart'])) {
                    foreach (Yii::app()->session['cart'] as $book_id => $quantity) {
                        $cart_state += $quantity;
                    }
                }

                include 'normal_member.php';
            } else {
                include 'manage.php';
            }
        }
        ?>
    </div>
</div>

