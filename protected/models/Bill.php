<?php

/**
 * This is the model class for table "bill".
 *
 * The followings are the available columns in table 'bill':
 * @property integer $id
 * @property integer $member_id
 * @property string $create_date
 * @property integer $total_amount
 * @property integer $payed
 * @property string $delivery_address
 * @property integer $discount
 *
 * The followings are the available model relations:
 * @property Member $member
 * @property Book[] $books
 */
class Bill extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'bill';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('id, member_id', 'required'),
			array('id, member_id, total_amount, payed, discount', 'numerical', 'integerOnly'=>true),
			array('create_date, delivery_address', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, member_id, create_date, total_amount, payed, delivery_address, discount', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
			'member' => array(self::BELONGS_TO, 'Member', 'member_id'),
			'books' => array(self::MANY_MANY, 'Book', 'bill_has_book(bill_id, book_id)'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'member_id' => 'Member',
			'create_date' => 'Create Date',
			'total_amount' => 'Total Amount',
			'payed' => 'Payed',
			'delivery_address' => 'Delivery Address',
			'discount' => 'Discount',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 *
	 * Typical usecase:
	 * - Initialize the model fields with values from filter form.
	 * - Execute this method to get CActiveDataProvider instance which will filter
	 * models according to data in model fields.
	 * - Pass data provider to CGridView, CListView or any similar widget.
	 *
	 * @return CActiveDataProvider the data provider that can return the models
	 * based on the search/filter conditions.
	 */
	public function search()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('id',$this->id);
		$criteria->compare('member_id',$this->member_id);
		$criteria->compare('create_date',$this->create_date,true);
		$criteria->compare('total_amount',$this->total_amount);
		$criteria->compare('payed',$this->payed);
		$criteria->compare('delivery_address',$this->delivery_address,true);
		$criteria->compare('discount',$this->discount);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Bill the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
