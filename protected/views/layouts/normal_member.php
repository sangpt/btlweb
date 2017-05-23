<table class="table table-bordered">
    <tr>
        <th>
    <h4><span class='glyphicon glyphicon-shopping-cart'></span><b> Giỏ hàng</b><b></b></h4>
</th>    
</tr>
<tr>
    <th>
<h5>Trạng thái: <?php
    if ($cart_state == 0) {
        echo "Rỗng";
    } else {
        echo "Có ".$cart_state." cuốn sách";
    }
    ?></h5>
</th>
</tr>
<tr>
    <th><a href="<?php echo $this->createUrl("cart/view") ?>">Xem gio hang</a></th>
</tr>
<tr>
    <th><h4><span class="glyphicon glyphicon-globe"></span><b> Quảng cáo</b></h4></th>
</tr>
<tr>
    <th>
        <img src="<?php echo Yii::app()->baseUrl ?>/images/advertisement.jpg" class="img-responsive" alt="Quảng cáo" />
    </th>
</tr>
</table>

