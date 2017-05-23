<?php
/*
 * @var $this CartController
 */
$this->breadcrumbs = array(
    'Cart',
);
?>
<h2>Thông tin giỏ hàng</h2>
<table class="table table-bordered">
    <tr class="bg-success">
        <th>
            <b>Tên sách</b>
        </th>
        <th>
            <b>Giá bán</b>
        </th>
        <th>
            <b>Số lượng</b>
        </th>
        <th>
            <b>Hành động</b>
        </th>
    </tr>
    <?php
    $total = 0;
    $discount = 0;
    $url = $this->createUrl("cart/checkout");
    if (isset(Yii::app()->session['cart'])) {
        foreach (Yii::app()->session['cart'] as $book_id => $quantity) {
            $query = Yii::app()->db->createCommand();
            $query->select = 'name, price';
            $query->from = 'book';
            $query->where = "id = $book_id";
            $book = $query->queryRow();
            $total += $book['price'] * $quantity;
            ?>
            <tr>
                <th class="book_name"><?php echo $book['name'] ?></th>
                <th class="book_price"><?php echo number_format($book['price'], 2, '.', ',') ?> vnd</th>
                <th class="quantity">
                    <input class="btn btn-info" type="number" book_id="<?php echo $book_id;?>" value="<?php echo $quantity ?>" min="1" style="width: 100px;">
                </th>
                <th>
                    <button type="submit" class="btn btn-success update" book_id="<?php echo $book_id;?>">Update</button>
                    <button class="btn btn-danger delete" book_id="<?php echo $book_id;?>">Delete</button>
                </th>
            </tr>
            <?php
        }
    }
    ?>
    <tr>
        <th colspan="4" id="total">Tổng tiền: <?php echo number_format($total, 2, '.', ',') ?></th>
    </tr>
    <tr>
        <th colspan="4">Khuyến mãi: <?php echo number_format($discount, 2, '.', ',') ?></th>
    </tr>
    <tr>
        <th colspan="4" id="payment">Phải trả: <?php echo number_format($total - $discount, 2, '.', ',') ?></th>
    </tr>
</table>

<button class="btn btn-success"  id="checkout">Checkout</button>

<script>
    $(document).ready(function() {
        $('#checkout').click(function() {
            var addr = prompt("Hãy nhập địa chỉ giao hàng:");
            if (addr !== null) {
                var data = {address: addr};
                $.post("<?php echo $this->createUrl('cart/checkout'); ?>", data, checkout);
            }
        });
        $('.delete').click(function() {
            var book_id = $(this).attr('book_id');
            var data = {book_id: $(this).attr('book_id')};
            $(this).parent().parent().remove();
            $.post("<?php echo $this->createUrl('cart/delete'); ?>", data, viewCart);
        }
        );
        $('.update').click(function() {
            var id = $(this).attr('book_id');
            var number = $('input[book_id ="'+id+'"]').val();
            var data = {book_id: id, quantity: number}; 
            $.post("<?php echo $this->createUrl('cart/modify'); ?>", data, viewCart);
        }
        );
    });

    function checkout(data) {
        window.location = "<?php echo $this->createUrl('site/index'); ?>";
    };
    
    function viewCart(data) {
        window.location = "<?php echo $this->createUrl('cart/view'); ?>";
    } ;
    
</script>
