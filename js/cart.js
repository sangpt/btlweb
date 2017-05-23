$(document).ready(function() {
    $('#checkout').click(function() {
        var addr = prompt("Hãy nhập địa chỉ giao hàng:");
        var data = {address: addr};
        $.post("<?php echo $this->createUrl('cart/checkout'); ?>", data, checkout);
    });
});

function checkout(data) {
    window.location = "<?php echo $this->createUrl('site / index'); ?>";
}


