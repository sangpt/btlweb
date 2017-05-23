<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Cart
 *
 * @author minhpro
 */
class Cart {
    private $orders = array();
    private $item_number = 0;
    
    public function add($order) {
        array_push($this->orders, $order);
        $this->item_number += $order->quantity;
    }
    
    public function remove($book_id) {
        foreach($this->orders as $key=>$value) {
            if ($value->book_id == $book_id) {
                unset($this->orders[$key]);
                $this->item_number -= $value->quantity;
                break;
            }
        }
    }
    
    public function modify($book_id, $quantity) {
        if (!is_int($quantity) || $quantity <0) return;
        foreach ($this->orders as $value) {
            if ($value->book_id == $book_id) {
                $this->item_number += ($quantity - $value->quantity);
                $value->quantity = $quantity;
                break;
            }
        }
    }
    
    public function isEmpty() {
        return ($this->item_number == 0);
    }
    
    public static function contain($book_id) {
        foreach (Yii::app()->session['cart'] as $id => $quantity) {
            if ($id == $book_id) {
                return $quantity;
            }
        }
        return 0;
    }
}
