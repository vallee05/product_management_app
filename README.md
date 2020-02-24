# README

## productsテーブル

|Column|Type|Options|
|------|----|-------|
|product_name|text||

### Association
- belongs_to :trade


## storage_locationsテーブル

|Column|Type|Options|
|------|----|-------|
|storage_location_name|string||

### Association
- belongs_to :trade


## staffsテーブル

|Column|Type|Options|
|------|----|-------|
|staff_name|string||

### Association
- belongs_to :trade


## buyersテーブル

|Column|Type|Options|
|------|----|-------|
|buyer_name|string||

### Association
- belongs_to :trade


## tradesテーブル

|Column|Type|Options|
|------|----|-------|
|date|string||
|price|string||
|payment_date|string||
|delivery_date|string||
|buyer|references|foreign_key: true|
|product|references|foreign_key: true|
|staff|references|foreign_key: true|
|storage_location|references|foreign_key: true|

### Association
- has_many :buyers
- has_many :products
- has_many :staffs
- has_many :storage_locations