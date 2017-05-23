<?php
include 'header.php';
echo $content;?>
<div class="row">
    <hr style="height:1px;background-color:#888;" />
    <div class="clear"></div>

    <div class="text-center">
        Copyright &copy; <?php echo date('Y'); ?> by TriThuc Company.<br/>
        All Rights Reserved.<br/>
        TriThucMoi Corporation
    </div><!-- footer -->

</div><!-- page -->
</div>

<script src="js/jquery-2.1.1.min.js"></script>

<script src="js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/jquery.jqplot.css" />
<script language="javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/js/jquery/jquery.jqplot.js"></script>
<script language="javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/js/jquery/excanvas.js"></script>
<script language="javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/js/jquery/jqplot.barRenderer.js"></script>
<script language="javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/js/jquery/jqplot.categoryAxisRenderer.js"></script>
<script language="javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/js/jquery/jqplot.enhancedLegendRenderer.js"></script>

<script language="javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/js/discount/discount.js"></script>
</body>
</html>


