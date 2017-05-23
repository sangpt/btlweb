<?php /* @var $this Controller */ ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
    <head>
        <!-- Include meta tag to ensure proper rendering and touch zooming -->
        <meta name="viewport" content="width=device-width, initial-scale=1" charset="utf-8"/>
        <!-- Include bootstrap stylesheets -->
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <script src="js/jquery-2.1.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>

        <style>
            #bookname {
                line-height: 1.5em;
                height: 3em;       /* height is 2x line-height, so two lines will display */
                overflow: hidden;  /* prevents extra lines from being visible */
            }
            #authorlist {
                line-height: 1.5em;
                height: 1.5em;       /* height is 1x line-height, so two lines will display */
                overflow: hidden;  /* prevents extra lines from being visible */
            }
        </style>
        <script>var contextPath = '<?php echo Yii::app()->request->baseUrl; ?>/index.php?r=';</script>      
        <title><?php echo CHtml::encode($this->pageTitle); ?></title>
    </head>

    <body>

        <div class="container">
            <img src="<?php echo Yii::app()->baseUrl ?>/images/site_paper.jpg" class="img-responsive" alt="Image"/>
            <div class="header">
                <div class="navbar navbar-inverse" role="navigation">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="<?php echo $this->createUrl("site/index"); ?>">
                            <span class="glyphicon glyphicon-home"></span> TriThucBook
                        </a>
                    </div>
                    <div class="navbar-collapse collapse navbar-inverse-collapse">
                        <ul class="nav navbar-nav">
                            <li><a href="<?php echo $this->createUrl("site/page", array('view' => 'about')); ?>"> Giới thiệu </a></li>
                            <li><a href="<?php echo $this->createUrl("site/contact"); ?>"> Liên hệ </a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown"> Thể loại sách <b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <?php
                                    $category = Category::model()->findAll();
                                    foreach ($category as $cate) {
                                        echo "<li>" . CHtml::link($cate->name, array('category/view', 'id' => $cate->id)) . "</li>";
                                    }
                                    ?>
                                </ul>
                            </li>
                        </ul>

                        <form class="navbar-form navbar-left"  method = "post" action="<?php echo $this->createUrl("site/search") ?>">

                            <div class="form-group">
                                <input type="text" name="name" class="form-control" placeholder="Tên sách"/>
                            </div>
                            <button type="submit" class="btn btn-success glyphicon glyphicon-search"></button>
                        </form> 
                        <ul class="nav navbar-nav navbar-right">
                            <?php
                            if (Yii::app()->user->isGuest) {
                                echo "<li><a href=" . $this->createUrl("site/login") . ">Đăng nhập</a></li>"
                                . "<li><a href=" . $this->createUrl("site/register") . ">Đăng ký</a></li>";
                            } else {
                                ?>
                                <li><a href="<?php echo $this->createUrl("cart/view"); ?>">
                                        <span class="glyphicon glyphicon-shopping-cart"></span> Giỏ hàng</a>
                                </li>
                                <li class="dropdown">
                                    <a href="#" 
                                       class="dropdown-toggle" data-toggle="dropdown">Xin chào 
                                        <?php echo Yii::app()->user->name ?><b class="caret"></b></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="<?php echo $this->createUrl("site/logout") ?>">Đăng xuất</a></li>
                                        <li><a href="<?php echo $this->createUrl("site/profile") ?>">Thông tin cá nhân</a></li>
                                    </ul>
                                </li>
                            <?php } ?> 
                        </ul>
                    </div>
                </div>
            </div>  
            <?php if (isset($this->breadcrumbs)): ?>
                <?php
                $this->widget('zii.widgets.CBreadcrumbs', array(
                    'links' => $this->breadcrumbs,
                    'htmlOptions' => array('class' => 'breadcrumb'),
                ));
                ?><!-- breadcrumbs -->
            <?php endif ?>

