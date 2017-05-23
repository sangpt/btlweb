<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Order
 *
 * @author minhpro
 */
class Order {
    private $book_id;
    private $quantity;
    
   public function __construct($book_id, $quantity) {
       $this->book_id = $book_id;
       $this->quantity = $quantity;
   }
}
