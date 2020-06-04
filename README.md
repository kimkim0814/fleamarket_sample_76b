# README
 fleamarket_sample_76b DB設計

## Items テーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false| 
|price|integer|null: false|
|description｜string|null: false, foreign_key: true |
|image_id|references|null: false, foreign_key: trye |
|user_id| references|null: false, foreign_key: true |
|category_id｜references | null:false, foreign_key: true|
|brand_id｜references | null: false, foreign_key: true |
|size｜string | null:false|
|status｜string | null:false |
|cost| string | null:false |
|days｜string| null:false|
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
|user_id|references |null: false, foreign_key: true |
|item_id|references |null: false, foreign_key: true |
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
|familyname|string|null: false|
|firstname|string|null: false|
|familyname_kana|string|null: false|
|firstname_kana|string|null: false|
|birth_date|date|null: false|
|postcode|integer|null: false|
|prefecture_code|integer|null: false|
|address_city|string|null: false|
|address_street|string|null: false|
|address_building|string|
|phone_number|integer|
### Association
- has_many :favorites
- has_many :items
- has_many :comments
- has_one :card



## Cardsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id| references |null:false, foreign_key:true | 
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
|item_id|string|null;false,foreign_key:true |
### Association
- has_many :items
- has_ancestry



## Brandsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null;false|
### Association
- has_many :items



## Imagesテーブル
|Column|Type|Options|
|------|----|-------|
|image|string|null;false|
### Association
- belongs_to :item
