<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of CartController
 *
 * @author minhpro
 */
class CartController extends Controller {

    public $layout="//layouts/main";
    public function filters() {
        return array(
            'accessControl', // perform access control for CRUD operations
            'postOnly + delete', // we only allow deletion via POST request
        );
    }

    public function accessRules() {
        return array(
            array('allow', // allow all users to perform 'index' and 'view' actions
                
                'users' => array('@'),
            ),
            array('deny', // deny all users
                'users' => array('*'),
            ),
        );
    }

    public function actionAdd($book_id) {
        if (isset($_POST['quantity'])) {
            if (isset($_SESSION['cart'][$book_id])) {
                $_SESSION['cart'][$book_id] += $_POST['quantity'];
            } else {
                $_SESSION['cart'][$book_id] = $_POST['quantity'];
            }
        }
        $this->redirect(array('view'));
    }

    public function actionModify() {
        if (isset($_POST['quantity']) && isset($_POST['book_id'])) {
            $quantity = $_POST['quantity'];
            $book_id = $_POST['book_id'];
            if (isset($_SESSION['cart'][$book_id])) {
                $_SESSION['cart'][$book_id] = $quantity;
            }
        }
    }

    public function actionDelete() {
        if (isset($_POST['book_id'])){
            $book_id = $_POST['book_id'];
            if(isset($_SESSION['cart'][$book_id])) {
            unset($_SESSION['cart'][$book_id]);
            }
        }
    }

    public function actionView() {
        $this->render("view");
    }
    
    public function actionCheckout() {
        $bill = new Bill();
        $bill->create_date = date("d/m/Y");
        $bill->discount= 0;
        
        Yii::app()->session['cart'] = array();
        
    }

}
