<?php

/**
 * This is the model class for table "book".
 *
 * The followings are the available columns in table 'book':
 * @property integer $id
 * @property string $name
 * @property string $publisher
 * @property string $year
 * @property integer $pages
 * @property integer $price
 * @property string $description
 * @property integer $comment_count
 * @property integer $star
 * @property integer $quantity
 * @property string $image_link
 *
 * The followings are the available model relations:
 * @property Author[] $authors
 * @property Bill[] $bills
 * @property Category[] $categories
 * @property Member[] $members
 */
class Book extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'book';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('name', 'required'),
			array('pages, price, comment_count, star, quantity', 'numerical', 'integerOnly'=>true),
			array('name, publisher', 'length', 'max'=>45),
			array('year', 'length', 'max'=>4),
			array('image_link', 'length', 'max'=>255),
			array('description', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, name, publisher, year, pages, price, description, comment_count, star, quantity, image_link', 'safe', 'on'=>'search'),
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
			'authors' => array(self::MANY_MANY, 'Author', 'author_has_book(book_id, author_id)'),
			'bills' => array(self::MANY_MANY, 'Bill', 'bill_has_book(book_id, bill_id)'),
			'categories' => array(self::MANY_MANY, 'Category', 'book_in_category(book_id, category_id)'),
			'members' => array(self::MANY_MANY, 'Member', 'member_comment_book(book_id, member_id)'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'name' => 'Name',
			'publisher' => 'Publisher',
			'year' => 'Year',
			'pages' => 'Pages',
			'price' => 'Price',
			'description' => 'Description',
			'comment_count' => 'Comment Count',
			'star' => 'Star',
			'quantity' => 'Quantity',
			'image_link' => 'Image Link',
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
		$criteria->compare('name',$this->name,true);
		$criteria->compare('publisher',$this->publisher,true);
		$criteria->compare('year',$this->year,true);
		$criteria->compare('pages',$this->pages);
		$criteria->compare('price',$this->price);
		$criteria->compare('description',$this->description,true);
		$criteria->compare('comment_count',$this->comment_count);
		$criteria->compare('star',$this->star);
		$criteria->compare('quantity',$this->quantity);
		$criteria->compare('image_link',$this->image_link,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Book the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
        
        public function authorListString() {
            /*
             * Nên return một mảng chứa các tác giả, không thêm phần view html ở đây
             */
            $str = "";
            foreach($this->authors as $author) {
                $str .= CHtml::link(CHtml::encode($author->name),array('author/view', 'id'=>$author->id))." "; 
            }
            return $str;
        }
        
        public function getMoney() {
            $str = number_format($this->price, 2,'.',',')."đ";
            return $str;
            
        }
}
