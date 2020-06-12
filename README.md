# README
fleamarket_sample_76b DB設計
## Items テーブル
|Column|Type|Options|
|------|----|-------|
|name(商品名)|string|null: false| 
|price(値段)|integer|null: false|　
|description(商品解説)|string| null: false, foreign_key: true |
|user_id(出品者)|references | null: false, foreign_key: true |
|category_id(カテゴリーID)｜references | null:false, foreign_key: true|
|brand_id(ブランドID)|references | null: false, foreign_key: true |
|size(商品のサイズ)|string | null:false|
|status(商品の状態#)|string | null:false |
|cost(配送料負担)|string|null:false |
|days(発送日の目安)|string| null:false|


### Associatio
- has_many :comments
- has_many :favorites
- belongs_to :user
- belongs_to :brand
- belongs_to :category
- has_many :images



## Comments テーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true |
|item_id|references|null: false, foreign_key: true |
|text|string|null: false|

### Association
- belongs_to :item
- belongs_to :user


## Usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false, unique: true|
|password|string|null: false|
|nickname|string|null: false|

### Association
- has_one : address
- has_one : identification
- has_many :favorites
- has_many :items
- has_many :comments
- has_one :card


##  Identification(本人確認)テーブル
|Column|Type|Options|
|------|----|-------|
|familyname|string|null: false|
|firstname|string|null: false|
|familyname_kana|string|null: false|
|firstname_kana|string|null: false|
|birth_date|date|null: false|
|user_id(出品者) | references | null: false |


### Association
- has_one : address
- belongs_to: user


## Addressテーブル
|Column|Type|Options|
|------|----|-------|
|postcode|string|null: false|
|prefecture_code|integer|null: false|
|address_city|string|null: false|
|address_street|string|null: false|
|address_building|string|
|phone_number|string|
|user| references| null:false|


### Association
- belongs_to :user
- belongs_to :identification



## Cardsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id(カード保持者)|references|null:false, foreign_key:true | 
|payjp_id|string|null:false|
### Association
- belongs_to : user


## Favoritesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references |null:false,foreign_key:true, unique: true|
|item_id|references|null:false,foreign_key:true, unique: true|

### Association
- belongs_to : user
- belongs_to : item





## Categorysテーブル
|Column|Type|Options|
|------|----|-------|
|ancestry|string||
|item_id(商品名)|string|null;false,foreign_key:true |
### Association
- has_many :items
- has_ancestry




## Brandsテーブル
|Column|Type|Options|
|------|----|-------|
|name(商品ブランド名)|string|null;false |

### Association
- has_many :items


## Imagesテーブル
|Column|Type|Options|
|------|----|-------|
|image|string|null:false|


### Association
- belongs_to :item
