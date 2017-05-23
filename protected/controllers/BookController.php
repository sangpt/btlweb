<?php

class BookController extends Controller {

    /**
     * @var string the default layout for the views. Defaults to '//layouts/column2', meaning
     * using two-column layout. See 'protected/views/layouts/column2.php'.
     */
    public $layout = '//layouts/main';

    /**
     * @return array action filters
     */
    public function filters() {
        return array(
            'accessControl', // perform access control for CRUD operations
            'postOnly + delete', // we only allow deletion via POST request
        );
    }

    /**
     * Specifies the access control rules.
     * This method is used by the 'accessControl' filter.
     * @return array access control rules
     */
    public function accessRules() {
        return array(
            array('allow', // allow all users to perform 'index' and 'view' actions
                'actions' => array('index', 'view'),
                'users' => array('*'),
            ),
            array('allow', // allow authenticated user to perform 'create' and 'update' actions
                'actions' => array('create', 'update'),
                'expression' => 'isset($user->role)&&($user->role==="admin")',
            ),
            array('allow', // allow authenticated user to perform 'create' and 'update' actions
                'actions' => array('comment'),
                'users' => array('@'),
            ),
            array('allow', // allow admin user to perform 'admin' and 'delete' actions
                'actions' => array('admin', 'delete'),
                'expression' => 'isset($user->role)&&($user->role==="admin")',
            ),
            array('deny', // deny all users
                'users' => array('*'),
            ),
        );
    }

    /**
     * Displays a particular model.
     * @param integer $id the ID of the model to be displayed
     */
    public function actionView($id) {
        $this->layout = "//layouts/book_view";
        $this->render('view', array(
            'model' => $this->loadModel($id),
        ));
    }

    /**
     * Creates a new model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     */
    public function actionCreate() {
        $model = new Book;

        // Uncomment the following line if AJAX validation is needed
        // $this->performAjaxValidation($model);

        if (isset($_POST['Book'])) {
            $model->attributes = $_POST['Book'];
            if ($model->save()) {
                $q = "insert into author_has_book (author_id, book_id)
				values (:author_id,{$model->id})";
                $cmd = Yii::app()->db->createCommand($q);
                foreach ($_POST['Book']['authors'] as $author_id) {
                    $cmd->bindParam(':author_id', $author_id, PDO::PARAM_INT);
                    $cmd->execute();
                }
                $q = "insert into book_in_category (book_id, category_id)
				values ({$model->id}, :category_id)";
                $cmd = Yii::app()->db->createCommand($q);
                foreach ($_POST['Book']['categories'] as $category_id) {
                    $cmd->bindParam(':category_id', $category_id, PDO::PARAM_INT);
                    $cmd->execute();
                }
                $this->redirect(array('view', 'id' => $model->id));
            }
        }

        $this->render('create', array(
            'model' => $model,
        ));
    }

    /**
     * Updates a particular model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id the ID of the model to be updated
     */
    public function actionUpdate($id) {
        $model = $this->loadModel($id);

        // Uncomment the following line if AJAX validation is needed
        // $this->performAjaxValidation($model);

        if (isset($_POST['Book'])) {
            $model->attributes = $_POST['Book'];
            if ($model->save()) {
                $q = "delete from author_has_book where book_id={$model->id}";
                $cmd = Yii::app()->db->createCommand($q);
                $cmd->execute();
                $q = "insert into author_has_book (book_id, author_id)
				values ({$model->id}, :author_id)";
                $cmd = Yii::app()->db->createCommand($q);
                foreach ($_POST['Book']['authors'] as $author_id) {
                    $cmd->bindParam(':author_id', $author_id, PDO::PARAM_INT);
                    $cmd->execute();
                }
                $this->redirect(array('view', 'id' => $model->id));
            }
        }

        $this->render('update', array(
            'model' => $model,
        ));
    }

    /**
     * Deletes a particular model.
     * If deletion is successful, the browser will be redirected to the 'admin' page.
     * @param integer $id the ID of the model to be deleted
     */
    public function actionDelete($id) {
        $this->loadModel($id)->delete();

        // if AJAX request (triggered by deletion via admin grid view), we should not redirect the browser
        if (!isset($_GET['ajax']))
            $this->redirect(isset($_POST['returnUrl']) ? $_POST['returnUrl'] : array('admin'));
    }

    /**
     * Lists all models.
     */
    public function actionIndex() {
        $dataProvider = new CActiveDataProvider('Book');
        $this->render('index', array(
            'dataProvider' => $dataProvider,
        ));
    }

    /**
     * Manages all models.
     */
    public function actionAdmin() {
        $model = new Book('search');
        $model->unsetAttributes();  // clear any default values
        if (isset($_GET['Book']))
            $model->attributes = $_GET['Book'];

        $this->render('admin', array(
            'model' => $model,
        ));
    }

    public function actionSearch() {
        if (isset($_POST['name']) && $_POST['name'] != "") {
            $model = new Book();
            $model->name = $_POST['name'];
            $criteria = new CDbCriteria;
            $criteria->compare('name', $model->name, true);
            $dataProvider = new CActiveDataProvider($model, array(
                'criteria' => $criteria, 'pagination' => array('pageSize' => 4)
            ));

            $this->widget('zii.widgets.CListView', array(
                'dataProvider' => $dataProvider,
                'itemView' => '_book_item',
                'itemsTagName' => 'ul',
                'itemsCssClass' => 'clearfix port-det port-thumb'
            ));
        }
    }
    
    public function actionComment($id){
            
            if(isset($_POST['content'])){
               
                $user_id=Yii::app()->user->getId();
                $content=$_POST['content'];
                $q="insert into member_comment_book (member_id, book_id, content, date)"
                        . "values(:user,:book,:content,:date)";
                $cmd=Yii::app()->db->createCommand($q);
                $cmd->bindParam(':user',$user_id,PDO::PARAM_INT);
                $cmd->bindParam(':book',$id,PDO::PARAM_INT);
                $cmd->bindParam(':content',$content,PDO::PARAM_INT);
                $cmd->bindParam(':date',date("Y-m-d"),PDO::PARAM_INT);
                $cmd->execute();
                
            } 
            $this->actionView($id);
    }
    /**
     * Returns the data model based on the primary key given in the GET variable.
     * If the data model is not found, an HTTP exception will be raised.
     * @param integer $id the ID of the model to be loaded
     * @return Book the loaded model
     * @throws CHttpException
     */
    public function loadModel($id) {
        $model = Book::model()->findByPk($id);
        if ($model === null)
            throw new CHttpException(404, 'The requested page does not exist.');
        return $model;
    }

    /**
     * Performs the AJAX validation.
     * @param Book $model the model to be validated
     */
    protected function performAjaxValidation($model) {
        if (isset($_POST['ajax']) && $_POST['ajax'] === 'book-form') {
            echo CActiveForm::validate($model);
            Yii::app()->end();
        }
    }

}
