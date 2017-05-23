<?php

class SiteController extends Controller {

    /**
     * Declares class-based actions.
     */
    public $layout = '//layouts/home';

    public function actions() {
        return array(
            // captcha action renders the CAPTCHA image displayed on the contact page
            'captcha' => array(
                'class' => 'CCaptchaAction',
                'backColor' => 0xFFFFFF,
            ),
            // page action renders "static" pages stored under 'protected/views/site/pages'
            // They can be accessed via: index.php?r=site/page&view=FileName
            'page' => array(
                'class' => 'CViewAction',
            ),
        );
    }

    /**
     * This is the default 'index' action that is invoked
     * when an action is not explicitly requested by users.
     */
    public function actionIndex() {
        // renders the view file 'protected/views/site/index.php'
        // using the default layout 'protected/views/layouts/main.php'
        $dataProvider = new CActiveDataProvider('Book', array(
            'criteria'=>array('order'=>'id DESC', 'limit'=>'20'),
             'pagination' => array('pageSize' => 8)
            ));
        $this->render('index', array('dataProvider' => $dataProvider));
    }

    /**
     * This is the action to handle external exceptions.
     */
    public function actionError() {
        if ($error = Yii::app()->errorHandler->error) {
            if (Yii::app()->request->isAjaxRequest)
                echo $error['message'];
            else
                $this->render('error', $error);
        }
    }

    /**
     * Displays the contact page
     */
    public function actionContact() {
        $model = new ContactForm;
        if (isset($_POST['ContactForm'])) {
            $model->attributes = $_POST['ContactForm'];
            if ($model->validate()) {
                $name = '=?UTF-8?B?' . base64_encode($model->name) . '?=';
                $subject = '=?UTF-8?B?' . base64_encode($model->subject) . '?=';
                $headers = "From: $name <{$model->email}>\r\n" .
                        "Reply-To: {$model->email}\r\n" .
                        "MIME-Version: 1.0\r\n" .
                        "Content-Type: text/plain; charset=UTF-8";

                mail(Yii::app()->params['adminEmail'], $subject, $model->body, $headers);
                Yii::app()->user->setFlash('contact', 'Thank you for contacting us. We will respond to you as soon as possible.');
                $this->refresh();
            }
        }
        $this->render('contact', array('model' => $model));
    }

    /**
     * Displays the login page
     */
    public function actionLogin() {
        $model = new LoginForm;

        // if it is ajax validation request
        if (isset($_POST['ajax']) && $_POST['ajax'] === 'login-form') {
            echo CActiveForm::validate($model);
            Yii::app()->end();
        }

        // collect user input data
        if (isset($_POST['LoginForm'])) {
            $model->attributes = $_POST['LoginForm'];
            // validate user input and redirect to the previous page if valid
            if ($model->validate() && $model->login())
                $this->redirect(Yii::app()->user->returnUrl);
        }
        // display the login form
        $this->render('login', array('model' => $model));
    }

    /**
     * Logs out the current user and redirect to homepage.
     */
    public function actionLogout() {
        Yii::app()->user->logout();
        unset($_SESSION['cart']);
        $this->redirect(Yii::app()->homeUrl);
    }

    public function actionRegister() {
        $model = new Member;

        // Uncomment the following line if AJAX validation is needed
        // $this->performAjaxValidation($model);

        if (isset($_POST['Member'])) {
            $model->attributes = $_POST['Member'];
            $model->role = "normal";
            if ($model->save())
                $this->redirect(array('member/view', 'id' => $model->id));
        }

        $this->render('register', array(
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
            $this->render('search', array(
                'dataProvider' => $dataProvider, 'name' => $_POST['name'],
            ));
        } else {
            $this->redirect(array('index'));
        }
    }
    
    public function actionCateSearch($name) {
        
    }

}
