<script class="code" type="text/javascript">
    window.onload = function(){
        //alert("mmmmm");
        var i = 0;
        var arrData = [];
        var arrTick = [];
        var arrLabel = [];
        
        <?php foreach ($arrData as $item) { ?>
            arrData[i++] = <?php echo $item?>;       
        <?php } ?>

        i = 0;
        <?php foreach ($arrTick as $item) { ?>
            arrTick[i++] = <?php echo $item?>;       
        <?php } ?>
            
        i = 0;
        <?php foreach ($arrLabel as $item) { ?>
            arrLabel[i++] = '<?php echo $item?>';       
        <?php } ?>

        $.jqplot('divGraph', [arrData], {
            seriesDefaults : {
                renderer : $.jqplot.BarRenderer,
                rendererOptions : {
                    fillToZero: true
                }
            },
            axesDefaults : {
                rendererOptions: {
                    drawBaseline: true,
                    baselineWidth: 1,
                    baselineColor: 'red'
                }
            },
            
            axes : {
                xaxis : {
                    renderer : $.jqplot.CategoryAxisRenderer,
                    ticks : arrTick
                },
                yaxis : {
                    pad: 1.05,
                    tickOptions : {
                        formatString : '%d'
                    }
                }
            },
            series : {
                rendererOptions: {
                    barWidth: 10,
                    barPadding: 5
                }
            },
            legend : {
                show : true,
                location: 's',
                placement : 'outsideGrid',
                labels : arrLabel,
                renderer : $.jqplot.EnhancedLegendRenderer,
                    rendererOptions : {
                        numberRows: 1,
                        seriesToggle : false
                    }
                },
            grid : {
                drawBorder : false
            }
        });
        alert("nnnn");
    };
</script>
<span>Lựa chọn một tiêu chí thống kê dưới đây</span>
<div class="clear"></div>
<select class="mar-t-15">
    <option>Doanh số bán hàng từng tháng</option>
    <option>Số lượng bán ra của từng thể loại</option>
    <option></option>
</select>
<div class="clear"></div>
<div class="example-content mar-t-15">
    <div id="divGraph"></div>
</div>

