<?php
/* @var $this BookController */
/* @var $model Book */

$this->breadcrumbs = array(
    'Books' => array('index'),
    $model->name,
);
?>

<div class="row">
    <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
        <h5><br /></h5>
        <?php echo CHtml::image("images/book/$model->image_link", 'BOOK', array("width" => "200px", "height" => "280px")); ?>
    </div>
    <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
        <h3><b><?php echo $model->name; ?></b></h3>
        <h5><b>Năm phát hành: </b><?php echo $model->year; ?></h5>
        <h5><b>Tác giả: </b><?php echo $model->authorListString(); ?> </h5>
        <h5><b>Giá bán: </b><?php echo $model->getMoney(); ?></h5>
        <h5><b>Mô tả:</b></h5>
        <article>
            <?php
            $less = "";
            $more = "";
            if (strlen($model->description) > 300) {
                $more = substr($model->description, 300);
                $less = substr($model->description, 0, 300);
            } else {
                $less = $model->description;
            }
            ?>
            <p><?php echo $less; ?><span class="read-more-content"><?php echo $more; ?></span></p>
            <a href="#detail">Thông tin chi tiết</a>
        </article>
    </div>
    <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
        <h2></h2>
        <div class="panel panel-primary">
            <div class="panel-heading">
                <span class="glyphicon glyphicon-shopping-cart"></span> Thông tin mua sách  
            </div>
            <div class="panel-body">
                <h5>

                    <?php
                    if (!Yii::app()->user->isGuest) {
                        $buy = 0;
                        if (isset(Yii::app()->session['cart'][$model->id])) {
                            $buy = Yii::app()->session['cart'][$model->id];
                        }

                        if ($buy > 0) {
                            echo "<span class='glyphicon glyphicon-warning-sign'></span> Bạn đã có " . $buy . " cuốn sách này trong giỏ";
                        }
                    }
                    ?>
                </h5>
                <hr style="height:1px;background-color:#666;" />
                <h5>Giá bán: <span style="color: red"><?php echo $model->getMoney(); ?></span></h5>
                <hr style="height:1px;background-color:#666;" />
                <h5>Số lượng mua:</h5>
                <form method="post" action="<?php echo $this->createUrl("cart/add", array('book_id' => $model->id)); ?>">
                    <h5><input name="quantity" class="btn btn-warning" type="number" value="1" min="1" style="width: 100px;"></h5>
                    <h5><input type="submit" class="btn btn-success" value="Thêm vào giỏ"></h5>
                </form>
            </div>
        </div> 
    </div>
</div>
<hr style="height:1px;background-color:#666;" />
<div class="row" id="comment">
    <h4>
        <?php
        if (Yii::app()->user->isGuest) {
            echo "Bạn hãy đăng nhập để bình luận.";
        } else {
            echo "Hãy viết bình luận và đánh giá.";
            ?>

            <div class="form -group">
                <?php echo CHtml::beginForm(array('book/comment', 'id' => $model->id), 'post'); ?>
                <?php echo CHtml::label('Lời bình:', 'content'); ?>
                <?php echo CHtml::textArea('content', ' ', array('rows' => 6, 'cols' => 50, 'class'=>'form-control')); ?>
                <?php echo CHtml::submitButton('Send', array('class'=>'btn btn-success form-control')); ?>
                <?php echo CHtml::endForm(); ?>
            </div>
        <?php } ?>
         
    </h4>
    <h3>Danh sách bình luận</h3>

<?php
$comments = MemberCommentBook::model()->findAll("book_id = $model->id");
foreach ($comments as $comment) {
    $user = Member::model()->findByPk($comment['member_id']);
   ?>
    <h4><?php echo $user['name'];?></h4>
    <p><?php echo $comment['content'];?></p>
<?php    
}
?>

</div>
<hr style="height:1px;background-color:#666;" />
<div class="row"  id="detail">
    <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
        <h3>Thông tin chi tiết:</h3>
        <?php
        $this->widget('zii.widgets.CDetailView', array(
            'data' => $model,
            'attributes' => array(
                'name',
                array(
                    'label' => 'Author',
                    'value' => function($data) {
                $link = '';
                foreach ($data->authors as $item) {
                    $link.=CHtml::link(CHtml::encode($item->name), array('author/view', 'id' => $item->id));
                    $link.=' ,';
                }
                return $link;
            },
                    'type' => 'raw'
                ),
                'publisher',
                'year',
                'pages',
                'price',
                'comment_count',
                'star',
            ),
        ));
        ?>
    </div>

    <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
        <h3>Thông tin tác giả</h3>
        <?php
        foreach ($model->authors as $author) {
            $less = "";
            $more = "";
            if (strlen($model->description) > 200) {
                $more = substr($author->description, 200);
                $less = substr($author->description, 0, 200);
            } else {
                $less = $model->description;
            }
            ?>
            <h5><b><?php echo $author->name; ?></b></h5>
            <p><?php echo $less; ?><span class="read-more-content"><?php echo $more; ?></span></p>
                <?php
            }
            ?>
    </div>
</div>


